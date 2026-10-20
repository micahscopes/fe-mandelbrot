#!/usr/bin/env python3
"""Validate compiled assets and assemble a path-independent static Pages site."""
import argparse,json,shutil
from pathlib import Path
from build import ROOT,source_hash,artifact_hashes
if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--out',required=True);parser.add_argument('--artifacts',default=str(ROOT/'artifacts'));args=parser.parse_args()
    artifacts=Path(args.artifacts).resolve();info=json.loads((artifacts/'build-info.json').read_text())
    assert info['sourceHash']==source_hash(),'Fe sources changed; regenerate the compiled assets with tools/build.py --record'
    assert info['files']==artifact_hashes(artifacts),'Compiled assets do not match their recorded hashes'
    out=Path(args.out).resolve();out.mkdir(parents=True,exist_ok=True)
    for name in ['renderer','viewer','colors']:shutil.copytree(artifacts/name,out/name,dirs_exist_ok=True)
    for name in ['index.html','style.css']:shutil.copy2(ROOT/'web'/name,out/name)
    source=out/'viewer/source';source.mkdir(exist_ok=True)
    for p in (ROOT/'app/renderer/src').glob('*.fe'):shutil.copy2(p,source/p.name)
    shutil.copy2(ROOT/'app/source_viewer/src/lib.fe',source/'viewer.fe')
    shutil.copy2(ROOT/'web/colors.html',out/'colors/index.html')
    color_source=out/'colors/source';color_source.mkdir(exist_ok=True)
    shutil.copy2(ROOT/'lib/perceptual_color/src/lib.fe',color_source/'lib.fe')
    shutil.copy2(ROOT/'app/color_demo/src/lib.fe',color_source/'demo.fe')
    shutil.copy2(artifacts/'build-info.json',out/'build-info.json');(out/'.nojekyll').touch()
    print(out)

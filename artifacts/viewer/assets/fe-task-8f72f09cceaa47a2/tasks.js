import { createMaterializedTaskMachine } from "./materialized-task.js";

function required(value, name) {
  if (typeof value !== "function") throw new TypeError(`missing materialized task export ${name}`);
  return value;
}

export function createMaterializedTaskRegistry(wasmExports) {
  const registry = Object.create(null);
  const task0StartName = "__fe_task_start_load_resources";
  const task0Start = required(wasmExports[task0StartName], task0StartName);
  const task0Resume0Name = "__fe_task_resume_load_resources_1";
  const task0Resume0 = required(wasmExports[task0Resume0Name], task0Resume0Name);
  const task0Resume1Name = "__fe_task_resume_load_resources_2";
  const task0Resume1 = required(wasmExports[task0Resume1Name], task0Resume1Name);
  const task0Resume2Name = "__fe_task_resume_load_resources_3";
  const task0Resume2 = required(wasmExports[task0Resume2Name], task0Resume2Name);
  const task0Resume3Name = "__fe_task_resume_load_resources_4";
  const task0Resume3 = required(wasmExports[task0Resume3Name], task0Resume3Name);
  const task0Resume4Name = "__fe_task_resume_load_resources_5";
  const task0Resume4 = required(wasmExports[task0Resume4Name], task0Resume4Name);
  const task0Resume5Name = "__fe_task_resume_load_resources_6";
  const task0Resume5 = required(wasmExports[task0Resume5Name], task0Resume5Name);
  const task0Resume6Name = "__fe_task_resume_load_resources_7";
  const task0Resume6 = required(wasmExports[task0Resume6Name], task0Resume6Name);
  const task0Resume7Name = "__fe_task_resume_load_resources_8";
  const task0Resume7 = required(wasmExports[task0Resume7Name], task0Resume7Name);
  const task0Resume8Name = "__fe_task_resume_load_resources_9";
  const task0Resume8 = required(wasmExports[task0Resume8Name], task0Resume8Name);
  registry["load_resources"] = createMaterializedTaskMachine({
    input: [{ kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "enum_tag", bits: 8, variants: 4 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }],
    step: [{ kind: "enum_tag", bits: 8, variants: 10 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "bool", bits: 1 }, { kind: "bool", bits: 1 }],
    complete: { start: 1, count: 1 },
    start: (...lanes) => task0Start(...lanes),
    continuations: [
      { state: 1, range: { start: 2, count: 7 }, pending: { start: 2, count: 1 }, frame: { start: 3, count: 6 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 0 } }, invoke: (...lanes) => task0Resume0(...lanes) },
      { state: 2, range: { start: 9, count: 13 }, pending: { start: 9, count: 1 }, frame: { start: 10, count: 12 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }, { kind: "enum_tag", bits: 8, variants: 6 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 6 } }, invoke: (...lanes) => task0Resume1(...lanes) },
      { state: 3, range: { start: 22, count: 14 }, pending: { start: 22, count: 1 }, frame: { start: 23, count: 13 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 0 } }, invoke: (...lanes) => task0Resume2(...lanes) },
      { state: 4, range: { start: 36, count: 15 }, pending: { start: 36, count: 1 }, frame: { start: 37, count: 14 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }, { kind: "enum_tag", bits: 8, variants: 6 }, { kind: "borrowed_pointer", bits: 32, stride: 1, align: 1, max: 4294967295 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 7 } }, invoke: (...lanes) => task0Resume3(...lanes) },
      { state: 5, range: { start: 51, count: 15 }, pending: { start: 51, count: 1 }, frame: { start: 52, count: 14 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }, { kind: "enum_tag", bits: 8, variants: 6 }, { kind: "borrowed_pointer", bits: 32, stride: 1, align: 1, max: 4294967295 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 7 } }, invoke: (...lanes) => task0Resume4(...lanes) },
      { state: 6, range: { start: 66, count: 14 }, pending: { start: 66, count: 1 }, frame: { start: 67, count: 13 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 0 } }, invoke: (...lanes) => task0Resume5(...lanes) },
      { state: 7, range: { start: 80, count: 14 }, pending: { start: 80, count: 1 }, frame: { start: 81, count: 13 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 0 } }, invoke: (...lanes) => task0Resume6(...lanes) },
      { state: 8, range: { start: 94, count: 14 }, pending: { start: 94, count: 1 }, frame: { start: 95, count: 13 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 0 } }, invoke: (...lanes) => task0Resume7(...lanes) },
      { state: 9, range: { start: 108, count: 14 }, pending: { start: 108, count: 1 }, frame: { start: 109, count: 13 }, delivery: { lanes: [{ kind: "enum_tag", bits: 8, variants: 3 }, { kind: "unsigned", bits: 32 }], failure: { start: 1, count: 1 }, success: { start: 2, count: 0 } }, invoke: (...lanes) => task0Resume8(...lanes) },
    ],
  }, wasmExports);
  return Object.freeze(registry);
}

export { createHostCompletionBroker, createMessagePortEventSource } from "./host-completion.js";

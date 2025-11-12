#executable_target_a = #hal.executable.target<"llvm-cpu", "a">
#executable_target_b = #hal.executable.target<"llvm-cpu", "b">
#executable_target_c = #hal.executable.target<"llvm-cpu", "c">
"builtin.module"() ({
  "executable.target_objects"() {empty = #hal.executable.objects<{}>, targets_a = #hal.executable.objects<{#executable_target_a = [#hal.executable.object<{path = "a.o"}>]}>, targets_bc = #hal.executable.objects<{#executable_target_b = [#hal.executable.object<{path = "b.o"}>], #executable_target_c = [#hal.executable.object<{path = "c.o"}>]}>} : () -> ()
}) : () -> ()


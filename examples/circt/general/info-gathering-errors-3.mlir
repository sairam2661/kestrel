"builtin.module"() ({
  "arc.model"() <{io = !hw.modty<output foo : i1>, sym_name = "Foo"}> ({
  ^bb0(%arg0: !arc.storage<42>):
    %0 = "arc.root_output"(%arg0) <{name = ""}> : (!arc.storage<42>) -> !arc.state<i1>
    %1 = "arc.root_output"(%arg0) <{name = "foo"}> : (!arc.storage<42>) -> !arc.state<i1>
  }) : () -> ()
}) : () -> ()


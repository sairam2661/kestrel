"builtin.module"() ({
  "arc.model"() <{io = !hw.modty<>, sym_name = "Foo"}> ({
  ^bb0(%arg0: !arc.storage<42>):
    %0 = "arc.alloc_state"(%arg0) : (!arc.storage<42>) -> !arc.state<i1>
    %1 = "arc.alloc_state"(%arg0) {name = "foo"} : (!arc.storage<42>) -> !arc.state<i1>
  }) : () -> ()
}) : () -> ()


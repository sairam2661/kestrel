"builtin.module"() ({
  "arc.model"() <{io = !hw.modty<>, sym_name = "Foo"}> ({
  ^bb0(%arg0: !arc.storage<42>):
    %0 = "arc.alloc_storage"(%arg0) : (!arc.storage<42>) -> !arc.storage<42>
  }) : () -> ()
}) : () -> ()


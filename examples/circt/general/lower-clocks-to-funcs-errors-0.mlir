"builtin.module"() ({
  "arc.model"() <{io = !hw.modty<>, sym_name = "NonConstExternalValue"}> ({
  ^bb0(%arg0: !arc.storage<42>):
    %0 = "hw.constant"() <{value = 0 : i9001}> : () -> i9001
    %1 = "comb.add"(%0, %0) : (i9001, i9001) -> i9001
    "arc.initial"() ({
      %2 = "comb.sub"(%1, %1) : (i9001, i9001) -> i9001
    }) : () -> ()
  }) : () -> ()
}) : () -> ()


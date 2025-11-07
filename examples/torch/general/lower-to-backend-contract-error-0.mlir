"builtin.module"() ({
  "torch.global_slot.module_initializer"() ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    "torch.initialize.global_slots"(%0) <{slotSymNames = [@slot0]}> : (!torch.int) -> ()
  }) : () -> ()
  "torch.global_slot"() <{sym_name = "slot0", typeBound = !torch.int}> : () -> ()
}) : () -> ()


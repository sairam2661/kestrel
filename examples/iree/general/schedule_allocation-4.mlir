"builtin.module"() ({
  "util.func"() <{function_type = (index) -> (), sym_name = "explicitAllocs", sym_visibility = "public"}> ({
  ^bb0(%arg0: index):
    %0 = "stream.resource.alloc"(%arg0) : (index) -> !stream.resource<external>
    %1 = "util.optimization_barrier"(%0) : (!stream.resource<external>) -> !stream.resource<external>
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "stream.resource.alloc"(%2) : (index) -> !stream.resource<transient>
    %4 = "util.optimization_barrier"(%3) : (!stream.resource<transient>) -> !stream.resource<transient>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()


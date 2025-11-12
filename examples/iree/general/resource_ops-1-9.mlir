"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<transient>) -> index, sym_name = "resourceSize", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<transient>):
    %0 = "stream.resource.size"(%arg0) : (!stream.resource<transient>) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()


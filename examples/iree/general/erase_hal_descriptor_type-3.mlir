"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "shared_memory_address_space"}> ({
    %0 = "dialect.memref_producer"() : () -> memref<?x8xf32, 3>
    "dialect.memref_consumer"(%0) : (memref<?x8xf32, 3>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()


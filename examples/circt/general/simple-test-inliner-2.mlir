"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "mod"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
  "emit.file"() <{file_name = "filename"}> ({
    "emit.ref"() <{target = @mod}> : () -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "sv.verbatim"() <{format_string = "`define HEADER", symbols = []}> : () -> ()
  "sv.verbatim"() <{format_string = "File1 should include header", symbols = []}> {output_file = #hw.output_file<"file1.sv", includeReplicatedOps>} : () -> ()
  "sv.verbatim"() <{format_string = "File2 should not include header", symbols = []}> {output_file = #hw.output_file<"file2.sv">} : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "Foo"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
}) {circt.loweringOptions = "emitReplicatedOpsToHeader"} : () -> ()


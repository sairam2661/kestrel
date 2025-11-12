"builtin.module"() ({
  "flow.func"() <{function_type = () -> (), sym_name = "externRet0", sym_visibility = "private"}> ({
  }) : () -> ()
  "flow.func"() <{function_type = () -> tensor<4x?xi32>, res_attrs = [{}], sym_name = "externRet1", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "flow.func"() <{function_type = () -> tensor<4x?xi32>, res_attrs = [{ret.attr}], sym_name = "externRet1Attrs", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "flow.func"() <{function_type = () -> (tensor<4x?xi32>, i32), res_attrs = [{}, {}], sym_name = "externRet2", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  }) : () -> ()
  "flow.func"() <{function_type = () -> (tensor<4x?xi32>, i32), res_attrs = [{ret.attr0}, {ret.attr1}], sym_name = "externRet2Attrs", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  }) : () -> ()
  "flow.func"() <{function_type = () -> tensor<4x?xi32>, res_attrs = [{ret.attr}], sym_name = "externRetAttributes", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) {some.attr = 123 : index} : () -> ()
}) : () -> ()


module {
  spirv.func @arg_decoration_pointer(%arg0: !spirv.ptr<!spirv.ptr<i32, PhysicalStorageBuffer>, Generic> {spirv.decoration = #spirv.decoration<RestrictPointer>}) "None" {
    spirv.Return
  }
}


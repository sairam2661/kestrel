module {
  spirv.func @arg_decoration_pointer(%arg0: !spirv.ptr<i32, PhysicalStorageBuffer> {spirv.decoration = #spirv.decoration<Restrict>}) "None" {
    spirv.Return
  }
}


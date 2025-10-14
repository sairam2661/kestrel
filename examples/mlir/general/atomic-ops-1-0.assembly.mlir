module {
  func.func @atomic_and(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicAnd <Device> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
}


module {
  func.func @atomic_iadd(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicIAdd <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_idecrement(%arg0: !spirv.ptr<i32, StorageBuffer>) -> i32 {
    %0 = spirv.AtomicIDecrement <Workgroup> <None> %arg0 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_iincrement(%arg0: !spirv.ptr<i32, StorageBuffer>) -> i32 {
    %0 = spirv.AtomicIIncrement <Workgroup> <None> %arg0 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_isub(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicISub <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_or(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicOr <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_smax(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicSMax <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_smin(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicSMin <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_umax(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicUMax <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_umin(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicUMin <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
  func.func @atomic_xor(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicXor <Workgroup> <None> %arg0, %arg1 : !spirv.ptr<i32, StorageBuffer>
    return %0 : i32
  }
}


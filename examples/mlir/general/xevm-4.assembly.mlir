module {
  func.func @memfence() {
    xevm.memfence <{addrspace = #xevm.addr_space<global>, scope = #xevm.mem_scope<workgroup>}>
    return
  }
}


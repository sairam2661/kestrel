module {
  func.func @no_spec() {
    %0 = "test.data_layout_query"() : () -> !llvm.ptr
    %1 = "test.data_layout_query"() : () -> !llvm.ptr<3>
    %2 = "test.data_layout_query"() : () -> !llvm.ptr<5>
    return
  }
}


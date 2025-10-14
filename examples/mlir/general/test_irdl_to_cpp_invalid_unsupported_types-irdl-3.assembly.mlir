module {
  irdl.dialect @test_irdl_to_cpp {
    irdl.operation @test_op {
      %0 = irdl.any
      irdl.attributes {"attr" = %0}
    }
  }
}


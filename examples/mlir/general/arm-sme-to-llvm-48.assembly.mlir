module {
  func.func @arm_sme_streaming_vl_bytes() -> index {
    %0 = arm_sme.streaming_vl <byte>
    return %0 : index
  }
}


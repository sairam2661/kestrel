module {
  func.func @fence_mbarrier_init() {
    nvvm.fence.mbarrier.init
    return
  }
}


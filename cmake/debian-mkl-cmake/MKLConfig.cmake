if(NOT TARGET MKL::MKL)
  add_library(MKL::MKL INTERFACE IMPORTED)
  set_target_properties(MKL::MKL PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "/usr/include/mkl;/usr/include"
    INTERFACE_LINK_DIRECTORIES "/usr/lib/x86_64-linux-gnu"
    INTERFACE_LINK_LIBRARIES "-lmkl_intel_lp64;-lmkl_gnu_thread;-lmkl_core;-lpthread;-lm;-ldl"
  )
endif()
set(MKL_FOUND TRUE)

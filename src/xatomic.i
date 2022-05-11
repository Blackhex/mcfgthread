/* This file is part of MCF Gthread.
 * See LICENSE.TXT for licensing information.
 * Copyleft 2022, LH_Mouse. All wrongs reserved.  */

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int8_t, 8_rlx) { __MCF_ATOMIC_STATEMENTS_(
  int8_t, __ATOMIC_RELAXED, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int16_t, 16_rlx) { __MCF_ATOMIC_STATEMENTS_(
  int16_t, __ATOMIC_RELAXED, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int32_t, 32_rlx) { __MCF_ATOMIC_STATEMENTS_(
  int32_t, __ATOMIC_RELAXED, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int64_t, 64_rlx) { __MCF_ATOMIC_STATEMENTS_(
  int64_t, __ATOMIC_RELAXED, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  intptr_t, ptr_rlx) { __MCF_ATOMIC_STATEMENTS_(
  intptr_t, __ATOMIC_RELAXED, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  size_t, z_rlx) { __MCF_ATOMIC_STATEMENTS_(
  size_t, __ATOMIC_RELAXED, __ATOMIC_RELAXED)  }

#if defined(__MCF_ATOMIC_HAS_ACQUIRE_)

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int8_t, 8_acq) { __MCF_ATOMIC_STATEMENTS_(
  int8_t, __ATOMIC_ACQUIRE, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int16_t, 16_acq) { __MCF_ATOMIC_STATEMENTS_(
  int16_t, __ATOMIC_ACQUIRE, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int32_t, 32_acq) { __MCF_ATOMIC_STATEMENTS_(
  int32_t, __ATOMIC_ACQUIRE, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int64_t, 64_acq) { __MCF_ATOMIC_STATEMENTS_(
  int64_t, __ATOMIC_ACQUIRE, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  intptr_t, ptr_acq) { __MCF_ATOMIC_STATEMENTS_(
  intptr_t, __ATOMIC_ACQUIRE, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  size_t, z_acq) { __MCF_ATOMIC_STATEMENTS_(
  size_t, __ATOMIC_ACQUIRE, __ATOMIC_ACQUIRE)  }

#endif  /* __MCF_ATOMIC_HAS_ACQUIRE_  */

#if defined(__MCF_ATOMIC_HAS_RELEASE_)

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int8_t, 8_rel) { __MCF_ATOMIC_STATEMENTS_(
  int8_t, __ATOMIC_RELEASE, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int16_t, 16_rel) { __MCF_ATOMIC_STATEMENTS_(
  int16_t, __ATOMIC_RELEASE, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int32_t, 32_rel) { __MCF_ATOMIC_STATEMENTS_(
  int32_t, __ATOMIC_RELEASE, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int64_t, 64_rel) { __MCF_ATOMIC_STATEMENTS_(
  int64_t, __ATOMIC_RELEASE, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  intptr_t, ptr_rel) { __MCF_ATOMIC_STATEMENTS_(
  intptr_t, __ATOMIC_RELEASE, __ATOMIC_RELAXED)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  size_t, z_rel) { __MCF_ATOMIC_STATEMENTS_(
  size_t, __ATOMIC_RELEASE, __ATOMIC_RELAXED)  }

#endif  /* __MCF_ATOMIC_HAS_RELEASE_  */

#if defined(__MCF_ATOMIC_HAS_ACQUIRE_) && defined(__MCF_ATOMIC_HAS_RELEASE_)

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int8_t, 8_arl) { __MCF_ATOMIC_STATEMENTS_(
  int8_t, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int16_t, 16_arl) { __MCF_ATOMIC_STATEMENTS_(
  int16_t, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int32_t, 32_arl) { __MCF_ATOMIC_STATEMENTS_(
  int32_t, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int64_t, 64_arl) { __MCF_ATOMIC_STATEMENTS_(
  int64_t, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  intptr_t, ptr_arl) { __MCF_ATOMIC_STATEMENTS_(
  intptr_t, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  size_t, z_arl) { __MCF_ATOMIC_STATEMENTS_(
  size_t, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)  }

#  endif  /* __MCF_ATOMIC_HAS_ACQUIRE_ && __MCF_ATOMIC_HAS_RELEASE_  */

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int8_t, 8_cst) { __MCF_ATOMIC_STATEMENTS_(
  int8_t, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int16_t, 16_cst) { __MCF_ATOMIC_STATEMENTS_(
  int16_t, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int32_t, 32_cst) { __MCF_ATOMIC_STATEMENTS_(
  int32_t, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  int64_t, 64_cst) { __MCF_ATOMIC_STATEMENTS_(
  int64_t, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  intptr_t, ptr_cst) { __MCF_ATOMIC_STATEMENTS_(
  intptr_t, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)  }

__MCF_ALWAYS_INLINE __MCF_ATOMIC_PROTOTYPE_(
  size_t, z_cst) { __MCF_ATOMIC_STATEMENTS_(
  size_t, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)  }

/* Tidy everything.  */
#undef __MCF_ATOMIC_PROTOTYPE_
#undef __MCF_ATOMIC_STATEMENTS_
#undef __MCF_ATOMIC_HAS_ACQUIRE_
#undef __MCF_ATOMIC_HAS_RELEASE_

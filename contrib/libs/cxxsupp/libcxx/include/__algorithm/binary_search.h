//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef _LIBCPP___ALGORITHM_BINARY_SEARCH_H
#define _LIBCPP___ALGORITHM_BINARY_SEARCH_H

#include <__algorithm/comp.h>
#include <__algorithm/comp_ref_type.h>
#include <__algorithm/lower_bound.h>
#include <__config>
#include <__iterator/iterator_traits.h>

#if !defined(_LIBCPP_HAS_NO_PRAGMA_SYSTEM_HEADER)
#  pragma GCC system_header
#endif

_LIBCPP_BEGIN_NAMESPACE_STD

template <class _ForwardIterator, class _Tp, class _Compare>
_LIBCPP_NODISCARD_EXT inline
_LIBCPP_INLINE_VISIBILITY _LIBCPP_CONSTEXPR_AFTER_CXX17
bool
binary_search(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{
    using _Comp_ref = typename __comp_ref_type<_Compare>::type;
    __first = std::lower_bound<_ForwardIterator, _Tp, _Comp_ref>(__first, __last, __value_, __comp);
    return __first != __last && !__comp(__value_, *__first);
}

template <class _ForwardIterator, class _Tp>
_LIBCPP_NODISCARD_EXT inline
_LIBCPP_INLINE_VISIBILITY _LIBCPP_CONSTEXPR_AFTER_CXX17
bool
binary_search(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    return std::binary_search(__first, __last, __value_,
                              __less<typename iterator_traits<_ForwardIterator>::value_type, _Tp>());
}

_LIBCPP_END_NAMESPACE_STD

#endif // _LIBCPP___ALGORITHM_BINARY_SEARCH_H

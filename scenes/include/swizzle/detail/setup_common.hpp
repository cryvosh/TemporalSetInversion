// CxxSwizzle (c) 2013-2021 Piotr Gwiazdowski
#pragma once

#include <type_traits>
#include <cstdint>
#include <swizzle/detail/utils.hpp>
#include <swizzle/detail/vector_traits.hpp>
#include <swizzle/detail/fwd.hpp>

namespace swizzle
{
    namespace detail
    {
        template <> struct scalar_traits<float_type> : scalar_traits_builder<scalar_types_info, float_type> {};
        template <> struct scalar_traits<int_type>   : scalar_traits_builder<scalar_types_info, int_type>{};
        template <> struct scalar_traits<uint_type>  : scalar_traits_builder<scalar_types_info, uint_type>{};
        template <> struct scalar_traits<bool_type>  : scalar_traits_builder<scalar_types_info, bool_type>{};

        template <> struct get_vector_type_impl<float_type> : default_vector_type_impl<float_type> {};
        template <> struct get_vector_type_impl<int_type>   : default_vector_type_impl<int_type> {};
        template <> struct get_vector_type_impl<uint_type>  : default_vector_type_impl<uint_type> {};
        template <> struct get_vector_type_impl<bool_type>  : default_vector_type_impl<bool_type> {};

        // now make sure fundamentals get the right treatment too
        template <> struct get_vector_type_impl<only_if<!std::is_same_v<float_type, float>, float, __LINE__>>   : get_vector_type_impl<float_type> {};
        template <> struct get_vector_type_impl<only_if<!std::is_same_v<float_type, double>, double, __LINE__>> : get_vector_type_impl<float_type> {};

        template <> struct get_vector_type_impl<only_if<!std::is_same_v<int_type, int16_t>, int16_t, __LINE__>> : get_vector_type_impl<int_type> {};
        template <> struct get_vector_type_impl<only_if<!std::is_same_v<int_type, int32_t>, int32_t, __LINE__>> : get_vector_type_impl<int_type> {};
        template <> struct get_vector_type_impl<only_if<!std::is_same_v<int_type, int64_t>, int64_t, __LINE__>> : get_vector_type_impl<int_type> {};

        template <> struct get_vector_type_impl<only_if<!std::is_same_v<uint_type, uint16_t>, uint16_t, __LINE__>> : get_vector_type_impl<uint_type> {};
        template <> struct get_vector_type_impl<only_if<!std::is_same_v<uint_type, uint32_t>, uint32_t, __LINE__>> : get_vector_type_impl<uint_type> {};
        template <> struct get_vector_type_impl<only_if<!std::is_same_v<uint_type, uint64_t>, uint64_t, __LINE__>> : get_vector_type_impl<uint_type> {};
    }

    using vec2 = vector<float_type, 2>;
    using vec3 = vector<float_type, 3>;
    using vec4 = vector<float_type, 4>;

    using ivec2 = vector<int_type, 2>;
    using ivec3 = vector<int_type, 3>;
    using ivec4 = vector<int_type, 4>;

    using uvec2 = vector<uint_type, 2>;
    using uvec3 = vector<uint_type, 3>;
    using uvec4 = vector<uint_type, 4>;

    using bvec2 = vector<bool_type, 2>;
    using bvec3 = vector<bool_type, 3>;
    using bvec4 = vector<bool_type, 4>;

    using mat2x2 = matrix<float_type, 2, 2>;
    using mat2x3 = matrix<float_type, 2, 3>;
    using mat2x4 = matrix<float_type, 2, 4>;

    using mat3x2 = matrix<float_type, 3, 2>;
    using mat3x3 = matrix<float_type, 3, 3>;
    using mat3x4 = matrix<float_type, 3, 4>;

    using mat4x2 = matrix<float_type, 4, 2>;
    using mat4x3 = matrix<float_type, 4, 3>;
    using mat4x4 = matrix<float_type, 4, 4>;

    using mat2 = mat2x2;
    using mat3 = mat3x3;
    using mat4 = mat4x4;

    using sampler2D = sampler_generic<float_type, int_type, uint_type>;
    using samplerCube = sampler_generic<float_type, int_type, uint_type>;

#ifdef CXXSWIZZLE_INTERNAL_BATCH_WRITE_MASK_TYPE
    using batch_write_mask = CXXSWIZZLE_INTERNAL_BATCH_WRITE_MASK_TYPE;
    
    inline void batch_write_mask_reset() noexcept
    {
        batch_write_mask::reset();
    }
#else
    inline void batch_write_mask_reset() noexcept
    {
    }
#endif
}
; ModuleID = 'cradle.cpp'
source_filename = "cradle.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.swizzle::vector_" = type { %"struct.swizzle::detail::vector_storage" }
%"struct.swizzle::detail::vector_storage" = type { %union.anon }
%union.anon = type { %"struct.std::array" }
%"struct.std::array" = type { [3 x float] }
%"struct.swizzle::vector_.635" = type { %"struct.swizzle::detail::vector_storage.636" }
%"struct.swizzle::detail::vector_storage.636" = type { %union.anon.637 }
%union.anon.637 = type { %"struct.std::array.638" }
%"struct.std::array.638" = type { [2 x float] }
%"struct.swizzle::matrix_" = type { %"struct.std::array.774" }
%"struct.std::array.774" = type { [2 x %"struct.swizzle::vector_.635"] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_cradle.cpp, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z3minff(float %0, float %1) local_unnamed_addr #3 {
  %3 = tail call float @llvm.minnum.f32(float %0, float %1) #9
  ret float %3
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z3maxff(float %0, float %1) local_unnamed_addr #3 {
  %3 = tail call float @llvm.maxnum.f32(float %0, float %1) #9
  ret float %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @_Z3modff(float %0, float %1) local_unnamed_addr #4 {
  %3 = tail call float @fmodf(float %0, float %1) #9
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3modN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @fmodf(float %5, float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @fmodf(float %10, float %12) #9
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @fmodf(float %15, float %17) #9
  %19 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %19, align 4, !tbaa !5
  %20 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %13, float* %20, align 4, !tbaa !5
  %21 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %18, float* %21, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3minN7swizzle7vector_IfJLm0ELm1EEEES1_(%"struct.swizzle::vector_.635"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_.635"* nocapture readonly %1, %"struct.swizzle::vector_.635"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @llvm.minnum.f32(float %5, float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.minnum.f32(float %10, float %12) #9
  %14 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %14, align 4, !tbaa !5
  %15 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %13, float* %15, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3maxN7swizzle7vector_IfJLm0ELm1EEEES1_(%"struct.swizzle::vector_.635"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_.635"* nocapture readonly %1, %"struct.swizzle::vector_.635"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @llvm.maxnum.f32(float %5, float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.maxnum.f32(float %10, float %12) #9
  %14 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %14, align 4, !tbaa !5
  %15 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %13, float* %15, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3minN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @llvm.minnum.f32(float %5, float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.minnum.f32(float %10, float %12) #9
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @llvm.minnum.f32(float %15, float %17) #9
  %19 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %19, align 4, !tbaa !5
  %20 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %13, float* %20, align 4, !tbaa !5
  %21 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %18, float* %21, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3maxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @llvm.maxnum.f32(float %5, float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.maxnum.f32(float %10, float %12) #9
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @llvm.maxnum.f32(float %15, float %17) #9
  %19 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %19, align 4, !tbaa !5
  %20 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %13, float* %20, align 4, !tbaa !5
  %21 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %18, float* %21, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3minN7swizzle7vector_IfJLm0ELm1ELm2EEEEf(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, float %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa.struct !7
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa.struct !7
  %8 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %9 = load float, float* %8, align 4, !tbaa.struct !7
  %10 = tail call float @llvm.minnum.f32(float %5, float %2) #9
  %11 = tail call float @llvm.minnum.f32(float %7, float %2) #9
  %12 = tail call float @llvm.minnum.f32(float %9, float %2) #9
  %13 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %10, float* %13, align 4, !tbaa !5, !alias.scope !8
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %11, float* %14, align 4, !tbaa !5, !alias.scope !8
  %15 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %12, float* %15, align 4, !tbaa !5, !alias.scope !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z3minN7swizzle7vector_IfJLm0ELm1EEEEf(%"struct.swizzle::vector_.635"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_.635"* nocapture readonly %1, float %2) local_unnamed_addr #4 {
  %4 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4
  %6 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4
  %8 = tail call float @llvm.minnum.f32(float %5, float %2) #9
  %9 = tail call float @llvm.minnum.f32(float %7, float %2) #9
  %10 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %10, align 4, !tbaa !5, !alias.scope !11
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %9, float* %11, align 4, !tbaa !5, !alias.scope !11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z3maxN7swizzle7vector_IfJLm0ELm1EEEEf(%"struct.swizzle::vector_.635"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_.635"* nocapture readonly %1, float %2) local_unnamed_addr #4 {
  %4 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4
  %6 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4
  %8 = tail call float @llvm.maxnum.f32(float %5, float %2) #9
  %9 = tail call float @llvm.maxnum.f32(float %7, float %2) #9
  %10 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %8, float* %10, align 4, !tbaa !5, !alias.scope !14
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %9, float* %11, align 4, !tbaa !5, !alias.scope !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3maxN7swizzle7vector_IfJLm0ELm1ELm2EEEEf(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, float %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa.struct !7
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa.struct !7
  %8 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %9 = load float, float* %8, align 4, !tbaa.struct !7
  %10 = tail call float @llvm.maxnum.f32(float %5, float %2) #9
  %11 = tail call float @llvm.maxnum.f32(float %7, float %2) #9
  %12 = tail call float @llvm.maxnum.f32(float %9, float %2) #9
  %13 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %10, float* %13, align 4, !tbaa !5, !alias.scope !17
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %11, float* %14, align 4, !tbaa !5, !alias.scope !17
  %15 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %12, float* %15, align 4, !tbaa !5, !alias.scope !17
  ret void
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z4signf(float %0) local_unnamed_addr #3 {
  %2 = tail call float @llvm.fabs.f32(float %0) #9
  %3 = fdiv float %0, %2
  ret float %3
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z5clampfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = tail call float @llvm.maxnum.f32(float %0, float %1) #9
  %5 = tail call float @llvm.minnum.f32(float %4, float %2) #9
  ret float %5
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z10smoothstepfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = fsub float %2, %0
  %5 = fsub float %1, %0
  %6 = fdiv float %4, %5
  %7 = tail call float @llvm.maxnum.f32(float %6, float 0.000000e+00) #9
  %8 = tail call float @llvm.minnum.f32(float %7, float 1.000000e+00) #9
  %9 = fmul float %8, %8
  %10 = fmul float %8, 2.000000e+00
  %11 = fsub float 3.000000e+00, %10
  %12 = fmul float %9, %11
  ret float %12
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z4stepff(float %0, float %1) local_unnamed_addr #3 {
  %3 = fsub float %1, %0
  %4 = tail call float @llvm.fabs.f32(float %3) #9
  %5 = fdiv float %3, %4
  %6 = fmul float %5, 5.000000e-01
  %7 = fadd float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3Rotf(%"struct.swizzle::matrix_"* noalias nocapture sret align 4 %0, float %1) local_unnamed_addr #5 {
  %3 = tail call float @sinf(float %1) #9
  %4 = tail call float @cosf(float %1) #9
  %5 = fneg float %3
  %6 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %4, float* %6, align 4, !tbaa !5
  %7 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %5, float* %7, align 4, !tbaa !5
  %8 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %3, float* %8, align 4, !tbaa !5
  %9 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %4, float* %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z5sdBoxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* nocapture %0, %"struct.swizzle::vector_"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %4 = load float, float* %3, align 4, !tbaa !5, !noalias !20
  %5 = tail call float @llvm.fabs.f32(float %4) #9
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !20
  %8 = tail call float @llvm.fabs.f32(float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %10 = load float, float* %9, align 4, !tbaa !5, !noalias !20
  %11 = tail call float @llvm.fabs.f32(float %10) #9
  %12 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %13 = load float, float* %12, align 4, !tbaa !5, !noalias !25
  %14 = fsub float %5, %13
  %15 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %16 = load float, float* %15, align 4, !tbaa !5, !noalias !25
  %17 = fsub float %8, %16
  %18 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %19 = load float, float* %18, align 4, !tbaa !5, !noalias !25
  %20 = fsub float %11, %19
  store float %14, float* %3, align 4, !tbaa !5
  store float %17, float* %6, align 4, !tbaa !5
  store float %20, float* %9, align 4, !tbaa !5
  %21 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #9
  %22 = tail call float @llvm.maxnum.f32(float %17, float 0.000000e+00) #9
  %23 = tail call float @llvm.maxnum.f32(float %20, float 0.000000e+00) #9
  %24 = fmul float %21, %21
  %25 = fmul float %22, %22
  %26 = fmul float %23, %23
  %27 = fadd float %25, %26
  %28 = fadd float %24, %27
  %29 = tail call float @sqrtf(float %28) #9
  %30 = load float, float* %3, align 4, !tbaa !2
  %31 = load float, float* %6, align 4, !tbaa !2
  %32 = load float, float* %9, align 4, !tbaa !2
  %33 = tail call float @llvm.maxnum.f32(float %31, float %32) #9
  %34 = tail call float @llvm.maxnum.f32(float %30, float %33) #9
  %35 = tail call float @llvm.minnum.f32(float %34, float 0.000000e+00) #9
  %36 = fadd float %29, %35
  ret float %36
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z5sdBoxN7swizzle7vector_IfJLm0ELm1EEEES1_(%"struct.swizzle::vector_.635"* nocapture %0, %"struct.swizzle::vector_.635"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %4 = load float, float* %3, align 4, !tbaa !5, !noalias !28
  %5 = tail call float @llvm.fabs.f32(float %4) #9
  %6 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !28
  %8 = tail call float @llvm.fabs.f32(float %7) #9
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %10 = load float, float* %9, align 4, !tbaa !5, !noalias !33
  %11 = fsub float %5, %10
  %12 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %13 = load float, float* %12, align 4, !tbaa !5, !noalias !33
  %14 = fsub float %8, %13
  store float %11, float* %3, align 4, !tbaa !5
  store float %14, float* %6, align 4, !tbaa !5
  %15 = tail call float @llvm.maxnum.f32(float %11, float 0.000000e+00) #9
  %16 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #9
  %17 = fmul float %15, %15
  %18 = fmul float %16, %16
  %19 = fadd float %17, %18
  %20 = tail call float @sqrtf(float %19) #9
  %21 = load float, float* %3, align 4, !tbaa !2
  %22 = load float, float* %6, align 4, !tbaa !2
  %23 = tail call float @llvm.maxnum.f32(float %21, float %22) #9
  %24 = tail call float @llvm.minnum.f32(float %23, float 0.000000e+00) #9
  %25 = fadd float %20, %24
  ret float %25
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z9sdLineSegN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_S1_(%"struct.swizzle::vector_"* nocapture readonly %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !36
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !36
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !5, !noalias !36
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !5, !noalias !36
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !5, !noalias !36
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !5, !noalias !36
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %20 = load float, float* %19, align 4, !tbaa !5, !noalias !39
  %21 = fsub float %20, %7
  %22 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %23 = load float, float* %22, align 4, !tbaa !5, !noalias !39
  %24 = fsub float %23, %12
  %25 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %26 = load float, float* %25, align 4, !tbaa !5, !noalias !39
  %27 = fsub float %26, %17
  %28 = fmul float %8, %21
  %29 = fmul float %13, %24
  %30 = fmul float %18, %27
  %31 = fadd float %29, %30
  %32 = fadd float %28, %31
  %33 = fmul float %21, %21
  %34 = fmul float %24, %24
  %35 = fmul float %27, %27
  %36 = fadd float %34, %35
  %37 = fadd float %33, %36
  %38 = fdiv float %32, %37
  %39 = tail call float @llvm.maxnum.f32(float %38, float 0.000000e+00) #9
  %40 = tail call float @llvm.minnum.f32(float %39, float 1.000000e+00) #9
  %41 = fmul float %21, %40
  %42 = fmul float %24, %40
  %43 = fmul float %27, %40
  %44 = fadd float %7, %41
  %45 = fadd float %12, %42
  %46 = fadd float %17, %43
  %47 = fsub float %5, %44
  %48 = fsub float %10, %45
  %49 = fsub float %15, %46
  %50 = fmul float %47, %47
  %51 = fmul float %48, %48
  %52 = fmul float %49, %49
  %53 = fadd float %51, %52
  %54 = fadd float %50, %53
  %55 = tail call float @sqrtf(float %54) #9
  ret float %55
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z6sdBallN7swizzle7vector_IfJLm0ELm1ELm2EEEEf(%"struct.swizzle::vector_"* nocapture %0, float %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %4 = load float, float* %3, align 4, !tbaa !2
  %5 = fadd float %4, 0xBFF028F5C0000000
  store float %5, float* %3, align 4, !tbaa !2
  %6 = tail call float @sinf(float %1) #9, !noalias !42
  %7 = tail call float @cosf(float %1) #9, !noalias !42
  %8 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %9 = load float, float* %8, align 4, !tbaa !5, !noalias !45
  %10 = load float, float* %3, align 4, !tbaa !5, !noalias !45
  %11 = fmul float %7, %9
  %12 = fmul float %6, %10
  %13 = fsub float %11, %12
  %14 = fmul float %6, %9
  %15 = fmul float %7, %10
  %16 = fadd float %14, %15
  store float %13, float* %8, align 4, !tbaa !5
  %17 = fadd float %16, 0x3FF028F5C0000000
  store float %17, float* %3, align 4, !tbaa !2
  %18 = fmul float %13, %13
  %19 = fmul float %17, %17
  %20 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %21 = load float, float* %20, align 4, !tbaa !5
  %22 = fmul float %21, %21
  %23 = fadd float %19, %22
  %24 = fadd float %18, %23
  %25 = tail call float @sqrtf(float %24) #9
  %26 = fadd float %25, 0xBFC3333340000000
  %27 = load float, float* %8, align 4, !tbaa !5, !noalias !48
  %28 = load float, float* %3, align 4, !tbaa !5, !noalias !48
  %29 = fadd float %28, 0xBFC3333340000000
  %30 = fmul float %27, %27
  %31 = fmul float %29, %29
  %32 = fadd float %30, %31
  %33 = tail call float @sqrtf(float %32) #9
  %34 = fadd float %33, 0xBF9EB851E0000000
  %35 = load float, float* %20, align 4, !tbaa !5
  %36 = fmul float %34, %34
  %37 = fmul float %35, %35
  %38 = fadd float %36, %37
  %39 = tail call float @sqrtf(float %38) #9
  %40 = fadd float %39, 0xBF847AE140000000
  %41 = tail call float @llvm.minnum.f32(float %26, float %40) #9
  %42 = load float, float* %20, align 4, !tbaa !2
  %43 = tail call float @llvm.fabs.f32(float %42) #9
  store float %43, float* %20, align 4, !tbaa !2
  %44 = load float, float* %8, align 4, !tbaa.struct !7
  %45 = load float, float* %3, align 4, !tbaa.struct !7
  %46 = fadd float %45, 0xBFC3333340000000
  %47 = fmul float %44, 0.000000e+00
  %48 = fmul float %46, 0x3FEB851EC0000000
  %49 = fmul float %43, 0x3FD99999A0000000
  %50 = fadd float %49, %48
  %51 = fadd float %47, %50
  %52 = fdiv float %51, 0x3FECC98600000000
  %53 = tail call float @llvm.maxnum.f32(float %52, float 0.000000e+00) #9
  %54 = tail call float @llvm.minnum.f32(float %53, float 1.000000e+00) #9
  %55 = fmul float %54, 0.000000e+00
  %56 = fmul float %54, 0x3FEB851EC0000000
  %57 = fmul float %54, 0x3FD99999A0000000
  %58 = fadd float %55, 0.000000e+00
  %59 = fadd float %56, 0x3FC3333340000000
  %60 = fadd float %57, 0.000000e+00
  %61 = fsub float %44, %58
  %62 = fsub float %45, %59
  %63 = fsub float %43, %60
  %64 = fmul float %61, %61
  %65 = fmul float %62, %62
  %66 = fmul float %63, %63
  %67 = fadd float %65, %66
  %68 = fadd float %64, %67
  %69 = tail call float @sqrtf(float %68) #9
  %70 = fadd float %69, 0xBF747AE140000000
  %71 = tail call float @llvm.minnum.f32(float %41, float %70) #9
  ret float %71
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z1fffff(float %0, float %1, float %2, float %3) local_unnamed_addr #5 {
  %5 = fadd float %3, 1.500000e+00
  %6 = fadd float %1, 3.000000e+00
  %7 = fdiv float %0, 0x400828F5C0000000
  %8 = fdiv float %6, 0x400828F5C0000000
  %9 = fdiv float %2, 0x400828F5C0000000
  %10 = tail call float @llvm.fabs.f32(float %7) #9
  %11 = tail call float @llvm.fabs.f32(float %8) #9
  %12 = tail call float @llvm.fabs.f32(float %9) #9
  %13 = fadd float %10, -1.000000e+00
  %14 = fadd float %11, 0xBFB99999A0000000
  %15 = fadd float %12, -5.000000e-01
  %16 = tail call float @llvm.maxnum.f32(float %13, float 0.000000e+00) #9
  %17 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #9
  %18 = tail call float @llvm.maxnum.f32(float %15, float 0.000000e+00) #9
  %19 = fmul float %16, %16
  %20 = fmul float %17, %17
  %21 = fmul float %18, %18
  %22 = fadd float %20, %21
  %23 = fadd float %19, %22
  %24 = tail call float @sqrtf(float %23) #9
  %25 = tail call float @llvm.maxnum.f32(float %14, float %15) #9
  %26 = tail call float @llvm.maxnum.f32(float %13, float %25) #9
  %27 = tail call float @llvm.minnum.f32(float %26, float 0.000000e+00) #9
  %28 = fadd float %27, %24
  %29 = fadd float %28, 0xBFB99999A0000000
  %30 = fadd float %10, 0xBFE99999A0000000
  %31 = fadd float %11, 0xBFF6666660000000
  %32 = tail call float @llvm.maxnum.f32(float %30, float 0.000000e+00) #9
  %33 = tail call float @llvm.maxnum.f32(float %31, float 0.000000e+00) #9
  %34 = fmul float %32, %32
  %35 = fmul float %33, %33
  %36 = fadd float %34, %35
  %37 = tail call float @sqrtf(float %36) #9
  %38 = tail call float @llvm.maxnum.f32(float %30, float %31) #9
  %39 = tail call float @llvm.minnum.f32(float %38, float 0.000000e+00) #9
  %40 = fadd float %39, %37
  %41 = fadd float %40, 0xBFC3333340000000
  %42 = fadd float %12, 0xBFD99999A0000000
  %43 = fmul float %41, %41
  %44 = fmul float %42, %42
  %45 = fadd float %44, %43
  %46 = tail call float @sqrtf(float %45) #9
  %47 = fadd float %46, 0xBFA47AE140000000
  %48 = fmul float %7, 1.000000e+01
  %49 = tail call float @sinf(float %48) #9
  %50 = fmul float %49, 0x3F50624DE0000000
  %51 = fadd float %29, %50
  %52 = fmul float %5, 3.000000e+00
  %53 = tail call float @sinf(float %52) #9
  %54 = fmul float %53, 0x3F9EB851E0000000
  %55 = tail call float @llvm.minnum.f32(float %53, float 0.000000e+00) #9
  %56 = tail call float @llvm.maxnum.f32(float %53, float 0.000000e+00) #9
  %57 = fadd float %7, 0xBFE3333340000000
  %58 = fadd float %8, -5.000000e-01
  %59 = fadd float %54, %55
  %60 = fadd float %58, 0xBFF028F5C0000000
  %61 = tail call float @sinf(float %59) #9, !noalias !53
  %62 = tail call float @cosf(float %59) #9, !noalias !53
  %63 = fmul float %57, %62
  %64 = fmul float %60, %61
  %65 = fsub float %63, %64
  %66 = fmul float %57, %61
  %67 = fmul float %60, %62
  %68 = fadd float %66, %67
  %69 = fadd float %68, 0x3FF028F5C0000000
  %70 = fmul float %65, %65
  %71 = fmul float %69, %69
  %72 = fmul float %9, %9
  %73 = fadd float %72, %71
  %74 = fadd float %70, %73
  %75 = tail call float @sqrtf(float %74) #9
  %76 = fadd float %75, 0xBFC3333340000000
  %77 = fadd float %69, 0xBFC3333340000000
  %78 = fmul float %77, %77
  %79 = fadd float %70, %78
  %80 = tail call float @sqrtf(float %79) #9
  %81 = fadd float %80, 0xBF9EB851E0000000
  %82 = fmul float %81, %81
  %83 = fadd float %72, %82
  %84 = tail call float @sqrtf(float %83) #9
  %85 = fadd float %84, 0xBF847AE140000000
  %86 = tail call float @llvm.minnum.f32(float %76, float %85) #9
  %87 = fmul float %65, 0.000000e+00
  %88 = fmul float %77, 0x3FEB851EC0000000
  %89 = fmul float %12, 0x3FD99999A0000000
  %90 = fadd float %89, %88
  %91 = fadd float %87, %90
  %92 = fdiv float %91, 0x3FECC98600000000
  %93 = tail call float @llvm.maxnum.f32(float %92, float 0.000000e+00) #9
  %94 = tail call float @llvm.minnum.f32(float %93, float 1.000000e+00) #9
  %95 = fmul float %94, 0.000000e+00
  %96 = fmul float %94, 0x3FEB851EC0000000
  %97 = fmul float %94, 0x3FD99999A0000000
  %98 = fadd float %95, 0.000000e+00
  %99 = fadd float %96, 0x3FC3333340000000
  %100 = fadd float %97, 0.000000e+00
  %101 = fsub float %65, %98
  %102 = fsub float %69, %99
  %103 = fsub float %12, %100
  %104 = fmul float %101, %101
  %105 = fmul float %102, %102
  %106 = fmul float %103, %103
  %107 = fadd float %105, %106
  %108 = fadd float %104, %107
  %109 = tail call float @sqrtf(float %108) #9
  %110 = fadd float %109, 0xBF747AE140000000
  %111 = tail call float @llvm.minnum.f32(float %86, float %110) #9
  %112 = fadd float %7, 0xBFD3333340000000
  %113 = fadd float %53, %55
  %114 = fmul float %113, 0x3FA99999A0000000
  %115 = fadd float %54, %114
  %116 = tail call float @sinf(float %115) #9, !noalias !56
  %117 = tail call float @cosf(float %115) #9, !noalias !56
  %118 = fmul float %112, %117
  %119 = fmul float %60, %116
  %120 = fsub float %118, %119
  %121 = fmul float %112, %116
  %122 = fmul float %60, %117
  %123 = fadd float %121, %122
  %124 = fadd float %123, 0x3FF028F5C0000000
  %125 = fmul float %120, %120
  %126 = fmul float %124, %124
  %127 = fadd float %72, %126
  %128 = fadd float %125, %127
  %129 = tail call float @sqrtf(float %128) #9
  %130 = fadd float %129, 0xBFC3333340000000
  %131 = fadd float %124, 0xBFC3333340000000
  %132 = fmul float %131, %131
  %133 = fadd float %125, %132
  %134 = tail call float @sqrtf(float %133) #9
  %135 = fadd float %134, 0xBF9EB851E0000000
  %136 = fmul float %135, %135
  %137 = fadd float %72, %136
  %138 = tail call float @sqrtf(float %137) #9
  %139 = fadd float %138, 0xBF847AE140000000
  %140 = tail call float @llvm.minnum.f32(float %130, float %139) #9
  %141 = fmul float %120, 0.000000e+00
  %142 = fmul float %131, 0x3FEB851EC0000000
  %143 = fadd float %89, %142
  %144 = fadd float %141, %143
  %145 = fdiv float %144, 0x3FECC98600000000
  %146 = tail call float @llvm.maxnum.f32(float %145, float 0.000000e+00) #9
  %147 = tail call float @llvm.minnum.f32(float %146, float 1.000000e+00) #9
  %148 = fmul float %147, 0.000000e+00
  %149 = fmul float %147, 0x3FEB851EC0000000
  %150 = fmul float %147, 0x3FD99999A0000000
  %151 = fadd float %148, 0.000000e+00
  %152 = fadd float %149, 0x3FC3333340000000
  %153 = fadd float %150, 0.000000e+00
  %154 = fsub float %120, %151
  %155 = fsub float %124, %152
  %156 = fsub float %12, %153
  %157 = fmul float %154, %154
  %158 = fmul float %155, %155
  %159 = fmul float %156, %156
  %160 = fadd float %158, %159
  %161 = fadd float %157, %160
  %162 = tail call float @sqrtf(float %161) #9
  %163 = fadd float %162, 0xBF747AE140000000
  %164 = tail call float @llvm.minnum.f32(float %140, float %163) #9
  %165 = fmul float %53, 0x3FA99999A0000000
  %166 = fadd float %54, %165
  %167 = tail call float @sinf(float %166) #9, !noalias !59
  %168 = tail call float @cosf(float %166) #9, !noalias !59
  %169 = fmul float %7, %168
  %170 = fmul float %60, %167
  %171 = fsub float %169, %170
  %172 = fmul float %7, %167
  %173 = fmul float %60, %168
  %174 = fadd float %172, %173
  %175 = fadd float %174, 0x3FF028F5C0000000
  %176 = fmul float %171, %171
  %177 = fmul float %175, %175
  %178 = fadd float %72, %177
  %179 = fadd float %176, %178
  %180 = tail call float @sqrtf(float %179) #9
  %181 = fadd float %180, 0xBFC3333340000000
  %182 = fadd float %175, 0xBFC3333340000000
  %183 = fmul float %182, %182
  %184 = fadd float %176, %183
  %185 = tail call float @sqrtf(float %184) #9
  %186 = fadd float %185, 0xBF9EB851E0000000
  %187 = fmul float %186, %186
  %188 = fadd float %72, %187
  %189 = tail call float @sqrtf(float %188) #9
  %190 = fadd float %189, 0xBF847AE140000000
  %191 = tail call float @llvm.minnum.f32(float %181, float %190) #9
  %192 = fmul float %171, 0.000000e+00
  %193 = fmul float %182, 0x3FEB851EC0000000
  %194 = fadd float %89, %193
  %195 = fadd float %192, %194
  %196 = fdiv float %195, 0x3FECC98600000000
  %197 = tail call float @llvm.maxnum.f32(float %196, float 0.000000e+00) #9
  %198 = tail call float @llvm.minnum.f32(float %197, float 1.000000e+00) #9
  %199 = fmul float %198, 0.000000e+00
  %200 = fmul float %198, 0x3FEB851EC0000000
  %201 = fmul float %198, 0x3FD99999A0000000
  %202 = fadd float %199, 0.000000e+00
  %203 = fadd float %200, 0x3FC3333340000000
  %204 = fadd float %201, 0.000000e+00
  %205 = fsub float %171, %202
  %206 = fsub float %175, %203
  %207 = fsub float %12, %204
  %208 = fmul float %205, %205
  %209 = fmul float %206, %206
  %210 = fmul float %207, %207
  %211 = fadd float %209, %210
  %212 = fadd float %208, %211
  %213 = tail call float @sqrtf(float %212) #9
  %214 = fadd float %213, 0xBF747AE140000000
  %215 = tail call float @llvm.minnum.f32(float %191, float %214) #9
  %216 = fadd float %7, 0x3FD3333340000000
  %217 = fadd float %53, %56
  %218 = fmul float %217, 0x3FA99999A0000000
  %219 = fadd float %54, %218
  %220 = tail call float @sinf(float %219) #9, !noalias !62
  %221 = tail call float @cosf(float %219) #9, !noalias !62
  %222 = fmul float %216, %221
  %223 = fmul float %60, %220
  %224 = fsub float %222, %223
  %225 = fmul float %216, %220
  %226 = fmul float %60, %221
  %227 = fadd float %225, %226
  %228 = fadd float %227, 0x3FF028F5C0000000
  %229 = fmul float %224, %224
  %230 = fmul float %228, %228
  %231 = fadd float %72, %230
  %232 = fadd float %229, %231
  %233 = tail call float @sqrtf(float %232) #9
  %234 = fadd float %233, 0xBFC3333340000000
  %235 = fadd float %228, 0xBFC3333340000000
  %236 = fmul float %235, %235
  %237 = fadd float %229, %236
  %238 = tail call float @sqrtf(float %237) #9
  %239 = fadd float %238, 0xBF9EB851E0000000
  %240 = fmul float %239, %239
  %241 = fadd float %72, %240
  %242 = tail call float @sqrtf(float %241) #9
  %243 = fadd float %242, 0xBF847AE140000000
  %244 = tail call float @llvm.minnum.f32(float %234, float %243) #9
  %245 = fmul float %224, 0.000000e+00
  %246 = fmul float %235, 0x3FEB851EC0000000
  %247 = fadd float %89, %246
  %248 = fadd float %245, %247
  %249 = fdiv float %248, 0x3FECC98600000000
  %250 = tail call float @llvm.maxnum.f32(float %249, float 0.000000e+00) #9
  %251 = tail call float @llvm.minnum.f32(float %250, float 1.000000e+00) #9
  %252 = fmul float %251, 0.000000e+00
  %253 = fmul float %251, 0x3FEB851EC0000000
  %254 = fmul float %251, 0x3FD99999A0000000
  %255 = fadd float %252, 0.000000e+00
  %256 = fadd float %253, 0x3FC3333340000000
  %257 = fadd float %254, 0.000000e+00
  %258 = fsub float %224, %255
  %259 = fsub float %228, %256
  %260 = fsub float %12, %257
  %261 = fmul float %258, %258
  %262 = fmul float %259, %259
  %263 = fmul float %260, %260
  %264 = fadd float %262, %263
  %265 = fadd float %261, %264
  %266 = tail call float @sqrtf(float %265) #9
  %267 = fadd float %266, 0xBF747AE140000000
  %268 = tail call float @llvm.minnum.f32(float %244, float %267) #9
  %269 = fadd float %7, 0x3FE3333340000000
  %270 = fadd float %54, %56
  %271 = tail call float @sinf(float %270) #9, !noalias !65
  %272 = tail call float @cosf(float %270) #9, !noalias !65
  %273 = fmul float %269, %272
  %274 = fmul float %60, %271
  %275 = fsub float %273, %274
  %276 = fmul float %269, %271
  %277 = fmul float %60, %272
  %278 = fadd float %276, %277
  %279 = fadd float %278, 0x3FF028F5C0000000
  %280 = fmul float %275, %275
  %281 = fmul float %279, %279
  %282 = fadd float %72, %281
  %283 = fadd float %280, %282
  %284 = tail call float @sqrtf(float %283) #9
  %285 = fadd float %284, 0xBFC3333340000000
  %286 = fadd float %279, 0xBFC3333340000000
  %287 = fmul float %286, %286
  %288 = fadd float %280, %287
  %289 = tail call float @sqrtf(float %288) #9
  %290 = fadd float %289, 0xBF9EB851E0000000
  %291 = fmul float %290, %290
  %292 = fadd float %72, %291
  %293 = tail call float @sqrtf(float %292) #9
  %294 = fadd float %293, 0xBF847AE140000000
  %295 = tail call float @llvm.minnum.f32(float %285, float %294) #9
  %296 = fmul float %275, 0.000000e+00
  %297 = fmul float %286, 0x3FEB851EC0000000
  %298 = fadd float %89, %297
  %299 = fadd float %296, %298
  %300 = fdiv float %299, 0x3FECC98600000000
  %301 = tail call float @llvm.maxnum.f32(float %300, float 0.000000e+00) #9
  %302 = tail call float @llvm.minnum.f32(float %301, float 1.000000e+00) #9
  %303 = fmul float %302, 0.000000e+00
  %304 = fmul float %302, 0x3FEB851EC0000000
  %305 = fmul float %302, 0x3FD99999A0000000
  %306 = fadd float %303, 0.000000e+00
  %307 = fadd float %304, 0x3FC3333340000000
  %308 = fadd float %305, 0.000000e+00
  %309 = fsub float %275, %306
  %310 = fsub float %279, %307
  %311 = fsub float %12, %308
  %312 = fmul float %309, %309
  %313 = fmul float %310, %310
  %314 = fmul float %311, %311
  %315 = fadd float %313, %314
  %316 = fadd float %312, %315
  %317 = tail call float @sqrtf(float %316) #9
  %318 = fadd float %317, 0xBF747AE140000000
  %319 = tail call float @llvm.minnum.f32(float %295, float %318) #9
  %320 = tail call float @llvm.minnum.f32(float %268, float %319) #9
  %321 = tail call float @llvm.minnum.f32(float %215, float %320) #9
  %322 = tail call float @llvm.minnum.f32(float %164, float %321) #9
  %323 = tail call float @llvm.minnum.f32(float %111, float %322) #9
  %324 = tail call float @llvm.minnum.f32(float %51, float %47) #9
  %325 = tail call float @llvm.minnum.f32(float %324, float %323) #9
  %326 = fneg float %8
  %327 = tail call float @llvm.maxnum.f32(float %325, float %326) #9
  %328 = fmul float %327, 2.000000e+00
  ret float %328
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #6

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #6

; Function Attrs: nofree nounwind
declare dso_local float @fmodf(float, float) local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nofree nounwind
declare dso_local float @sinf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local float @cosf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local float @sqrtf(float) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cradle.cpp() #8 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !3, i64 0}
!7 = !{i64 0, i64 12, !2}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_Z3minN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_: argument 0"}
!10 = distinct !{!10, !"_Z3minN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_Z3minN7swizzle7vector_IfJLm0ELm1EEEES1_: argument 0"}
!13 = distinct !{!13, !"_Z3minN7swizzle7vector_IfJLm0ELm1EEEES1_"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_Z3maxN7swizzle7vector_IfJLm0ELm1EEEES1_: argument 0"}
!16 = distinct !{!16, !"_Z3maxN7swizzle7vector_IfJLm0ELm1EEEES1_"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_Z3maxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_: argument 0"}
!19 = distinct !{!19, !"_Z3maxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_"}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE8call_absERKS1_: argument 0"}
!22 = distinct !{!22, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE8call_absERKS1_"}
!23 = distinct !{!23, !24, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_: argument 0"}
!24 = distinct !{!24, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!27 = distinct !{!27, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZN7swizzle7vector_IfJLm0ELm1EEE8call_absERKS1_: argument 0"}
!30 = distinct !{!30, !"_ZN7swizzle7vector_IfJLm0ELm1EEE8call_absERKS1_"}
!31 = distinct !{!31, !32, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_: argument 0"}
!32 = distinct !{!32, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1EEEES3_: argument 0"}
!35 = distinct !{!35, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1EEEES3_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!38 = distinct !{!38, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!41 = distinct !{!41, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_Z3Rotf: argument 0"}
!44 = distinct !{!44, !"_Z3Rotf"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm1EEE5decayEv: argument 0"}
!47 = distinct !{!47, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm1EEE5decayEv"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm1EEE5decayEv: argument 0"}
!50 = distinct !{!50, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm1EEE5decayEv"}
!51 = distinct !{!51, !52, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm1EEEcvS3_Ev: argument 0"}
!52 = distinct !{!52, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm1EEEcvS3_Ev"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_Z3Rotf: argument 0"}
!55 = distinct !{!55, !"_Z3Rotf"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_Z3Rotf: argument 0"}
!58 = distinct !{!58, !"_Z3Rotf"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_Z3Rotf: argument 0"}
!61 = distinct !{!61, !"_Z3Rotf"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_Z3Rotf: argument 0"}
!64 = distinct !{!64, !"_Z3Rotf"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_Z3Rotf: argument 0"}
!67 = distinct !{!67, !"_Z3Rotf"}

; ModuleID = 'piano.cpp'
source_filename = "piano.cpp"
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
%"struct.std::array.774" = type { [3 x %"struct.swizzle::vector_"] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_piano.cpp, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z3minff(float %0, float %1) local_unnamed_addr #3 {
  %3 = tail call float @llvm.minnum.f32(float %0, float %1) #11
  ret float %3
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z3maxff(float %0, float %1) local_unnamed_addr #3 {
  %3 = tail call float @llvm.maxnum.f32(float %0, float %1) #11
  ret float %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @_Z3modff(float %0, float %1) local_unnamed_addr #4 {
  %3 = tail call float @fmodf(float %0, float %1) #11
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3modN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @fmodf(float %5, float %7) #11
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @fmodf(float %10, float %12) #11
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @fmodf(float %15, float %17) #11
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
  %8 = tail call float @llvm.minnum.f32(float %5, float %7) #11
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.minnum.f32(float %10, float %12) #11
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
  %8 = tail call float @llvm.maxnum.f32(float %5, float %7) #11
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.maxnum.f32(float %10, float %12) #11
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
  %8 = tail call float @llvm.minnum.f32(float %5, float %7) #11
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.minnum.f32(float %10, float %12) #11
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @llvm.minnum.f32(float %15, float %17) #11
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
  %8 = tail call float @llvm.maxnum.f32(float %5, float %7) #11
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.maxnum.f32(float %10, float %12) #11
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @llvm.maxnum.f32(float %15, float %17) #11
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
  %10 = tail call float @llvm.minnum.f32(float %5, float %2) #11
  %11 = tail call float @llvm.minnum.f32(float %7, float %2) #11
  %12 = tail call float @llvm.minnum.f32(float %9, float %2) #11
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
  %8 = tail call float @llvm.minnum.f32(float %5, float %2) #11
  %9 = tail call float @llvm.minnum.f32(float %7, float %2) #11
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
  %8 = tail call float @llvm.maxnum.f32(float %5, float %2) #11
  %9 = tail call float @llvm.maxnum.f32(float %7, float %2) #11
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
  %10 = tail call float @llvm.maxnum.f32(float %5, float %2) #11
  %11 = tail call float @llvm.maxnum.f32(float %7, float %2) #11
  %12 = tail call float @llvm.maxnum.f32(float %9, float %2) #11
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
  %2 = tail call float @llvm.fabs.f32(float %0) #11
  %3 = fdiv float %0, %2
  ret float %3
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z5clampfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = tail call float @llvm.maxnum.f32(float %0, float %1) #11
  %5 = tail call float @llvm.minnum.f32(float %4, float %2) #11
  ret float %5
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z10smoothstepfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = fsub float %2, %0
  %5 = fsub float %1, %0
  %6 = fdiv float %4, %5
  %7 = tail call float @llvm.maxnum.f32(float %6, float 0.000000e+00) #11
  %8 = tail call float @llvm.minnum.f32(float %7, float 1.000000e+00) #11
  %9 = fmul float %8, %8
  %10 = fmul float %8, 2.000000e+00
  %11 = fsub float 3.000000e+00, %10
  %12 = fmul float %9, %11
  ret float %12
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z4stepff(float %0, float %1) local_unnamed_addr #3 {
  %3 = fsub float %1, %0
  %4 = tail call float @llvm.fabs.f32(float %3) #11
  %5 = fdiv float %3, %4
  %6 = fmul float %5, 5.000000e-01
  %7 = fadd float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z10sdCylinderN7swizzle7vector_IfJLm0ELm1ELm2EEEENS0_IfJLm0ELm1EEEE(%"struct.swizzle::vector_"* nocapture readonly %0, %"struct.swizzle::vector_.635"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %4 = load float, float* %3, align 4, !tbaa !5, !noalias !20
  %5 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %6 = load float, float* %5, align 4, !tbaa !5, !noalias !20
  %7 = fmul float %4, %4
  %8 = fmul float %6, %6
  %9 = fadd float %7, %8
  %10 = tail call float @sqrtf(float %9) #11
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !5
  %13 = tail call float @llvm.fabs.f32(float %10) #11
  %14 = tail call float @llvm.fabs.f32(float %12) #11
  %15 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %16 = load float, float* %15, align 4, !tbaa !5, !noalias !25
  %17 = fsub float %13, %16
  %18 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %19 = load float, float* %18, align 4, !tbaa !5, !noalias !25
  %20 = fsub float %14, %19
  %21 = tail call float @llvm.maxnum.f32(float %17, float %20) #11
  %22 = tail call float @llvm.minnum.f32(float %21, float 0.000000e+00) #11
  %23 = tail call float @llvm.maxnum.f32(float %17, float 0.000000e+00) #11
  %24 = tail call float @llvm.maxnum.f32(float %20, float 0.000000e+00) #11
  %25 = fmul float %23, %23
  %26 = fmul float %24, %24
  %27 = fadd float %25, %26
  %28 = tail call float @sqrtf(float %27) #11
  %29 = fadd float %28, %22
  ret float %29
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z5sdBoxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* nocapture readonly %0, %"struct.swizzle::vector_"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %4 = load float, float* %3, align 4, !tbaa !5, !noalias !28
  %5 = tail call float @llvm.fabs.f32(float %4) #11
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !28
  %8 = tail call float @llvm.fabs.f32(float %7) #11
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %10 = load float, float* %9, align 4, !tbaa !5, !noalias !28
  %11 = tail call float @llvm.fabs.f32(float %10) #11
  %12 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %13 = load float, float* %12, align 4, !tbaa !5, !noalias !33
  %14 = fsub float %5, %13
  %15 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %16 = load float, float* %15, align 4, !tbaa !5, !noalias !33
  %17 = fsub float %8, %16
  %18 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %19 = load float, float* %18, align 4, !tbaa !5, !noalias !33
  %20 = fsub float %11, %19
  %21 = tail call float @llvm.maxnum.f32(float %17, float %20) #11
  %22 = tail call float @llvm.maxnum.f32(float %14, float %21) #11
  %23 = tail call float @llvm.minnum.f32(float %22, float 0.000000e+00) #11
  %24 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #11
  %25 = tail call float @llvm.maxnum.f32(float %17, float 0.000000e+00) #11
  %26 = tail call float @llvm.maxnum.f32(float %20, float 0.000000e+00) #11
  %27 = fmul float %24, %24
  %28 = fmul float %25, %25
  %29 = fmul float %26, %26
  %30 = fadd float %28, %29
  %31 = fadd float %27, %30
  %32 = tail call float @sqrtf(float %31) #11
  %33 = fadd float %32, %23
  ret float %33
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z6RotMatN7swizzle7vector_IfJLm0ELm1ELm2EEEEf(%"struct.swizzle::matrix_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture %1, float %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa.struct !7, !noalias !36
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa.struct !7, !noalias !36
  %8 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %9 = load float, float* %8, align 4, !tbaa.struct !7, !noalias !36
  %10 = fmul float %5, %5
  %11 = fmul float %7, %7
  %12 = fmul float %9, %9
  %13 = fadd float %11, %12
  %14 = fadd float %10, %13
  %15 = tail call float @sqrtf(float %14) #11, !noalias !36
  %16 = fdiv float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fmul float %7, %16
  %19 = fmul float %9, %16
  store float %17, float* %4, align 4, !tbaa !5
  store float %18, float* %6, align 4, !tbaa !5
  store float %19, float* %8, align 4, !tbaa !5
  %20 = tail call float @sinf(float %2) #11
  %21 = tail call float @cosf(float %2) #11
  %22 = fsub float 1.000000e+00, %21
  %23 = load float, float* %4, align 4, !tbaa !2
  %24 = fmul float %22, %23
  %25 = fmul float %23, %24
  %26 = fadd float %21, %25
  %27 = load float, float* %6, align 4, !tbaa !2
  %28 = fmul float %24, %27
  %29 = load float, float* %8, align 4, !tbaa !2
  %30 = fmul float %20, %29
  %31 = fsub float %28, %30
  %32 = fmul float %22, %29
  %33 = fmul float %23, %32
  %34 = fmul float %20, %27
  %35 = fadd float %34, %33
  %36 = fadd float %28, %30
  %37 = fmul float %22, %27
  %38 = fmul float %27, %37
  %39 = fadd float %21, %38
  %40 = fmul float %37, %29
  %41 = fmul float %20, %23
  %42 = fsub float %40, %41
  %43 = fsub float %33, %34
  %44 = fadd float %41, %40
  %45 = fmul float %29, %32
  %46 = fadd float %21, %45
  %47 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %26, float* %47, align 4, !tbaa !5
  %48 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %31, float* %48, align 4, !tbaa !5
  %49 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %35, float* %49, align 4, !tbaa !5
  %50 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %36, float* %50, align 4, !tbaa !5
  %51 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %39, float* %51, align 4, !tbaa !5
  %52 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %42, float* %52, align 4, !tbaa !5
  %53 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 2, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %43, float* %53, align 4, !tbaa !5
  %54 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 2, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %44, float* %54, align 4, !tbaa !5
  %55 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 2, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %46, float* %55, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z10udRoundBoxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_S1_(%"struct.swizzle::vector_"* nocapture readonly %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !41
  %6 = tail call float @llvm.fabs.f32(float %5) #11
  %7 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %8 = load float, float* %7, align 4, !tbaa !5, !noalias !41
  %9 = tail call float @llvm.fabs.f32(float %8) #11
  %10 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %11 = load float, float* %10, align 4, !tbaa !5, !noalias !41
  %12 = tail call float @llvm.fabs.f32(float %11) #11
  %13 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %14 = load float, float* %13, align 4, !tbaa !5, !noalias !46
  %15 = fsub float %6, %14
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %17 = load float, float* %16, align 4, !tbaa !5, !noalias !46
  %18 = fsub float %9, %17
  %19 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %20 = load float, float* %19, align 4, !tbaa !5, !noalias !46
  %21 = fsub float %12, %20
  %22 = tail call float @llvm.maxnum.f32(float %15, float 0.000000e+00) #11
  %23 = tail call float @llvm.maxnum.f32(float %18, float 0.000000e+00) #11
  %24 = tail call float @llvm.maxnum.f32(float %21, float 0.000000e+00) #11
  %25 = fmul float %22, %22
  %26 = fmul float %23, %23
  %27 = fmul float %24, %24
  %28 = fadd float %26, %27
  %29 = fadd float %25, %28
  %30 = tail call float @sqrtf(float %29) #11
  %31 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %32 = load float, float* %31, align 4, !tbaa !2
  %33 = fsub float %30, %32
  ret float %33
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z8opRepLimffff(float %0, float %1, float %2, float %3) local_unnamed_addr #3 {
  %5 = fdiv float %0, %1
  %6 = fadd float %5, 5.000000e-01
  %7 = tail call float @llvm.floor.f32(float %6) #11
  %8 = tail call float @llvm.maxnum.f32(float %7, float %2) #11
  %9 = tail call float @llvm.minnum.f32(float %8, float %3) #11
  %10 = fmul float %9, %1
  %11 = fsub float %0, %10
  ret float %11
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4obj1N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = fadd float %3, 0x3FB99999A0000000
  %5 = fdiv float %4, 0x3FC99999A0000000
  %6 = fadd float %5, 5.000000e-01
  %7 = tail call float @llvm.floor.f32(float %6) #11
  %8 = tail call float @llvm.maxnum.f32(float %7, float -2.200000e+01) #11
  %9 = tail call float @llvm.minnum.f32(float %8, float 2.300000e+01) #11
  %10 = fmul float %9, 0x3FC99999A0000000
  %11 = fsub float %4, %10
  %12 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %13 = load float, float* %12, align 4, !tbaa !5, !noalias !49
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !5, !noalias !49
  %16 = fadd float %13, 0xBFB99999A0000000
  %17 = fadd float %15, 0xBFB99999A0000000
  %18 = tail call float @llvm.fabs.f32(float %11) #11
  %19 = tail call float @llvm.fabs.f32(float %16) #11
  %20 = tail call float @llvm.fabs.f32(float %17) #11
  %21 = fadd float %18, 0xBFB6041880000000
  %22 = fadd float %19, 0xBFB1EB8520000000
  %23 = fadd float %20, 0xBFE30A3D80000000
  %24 = tail call float @llvm.maxnum.f32(float %21, float 0.000000e+00) #11
  %25 = tail call float @llvm.maxnum.f32(float %22, float 0.000000e+00) #11
  %26 = tail call float @llvm.maxnum.f32(float %23, float 0.000000e+00) #11
  %27 = fmul float %24, %24
  %28 = fmul float %25, %25
  %29 = fmul float %26, %26
  %30 = fadd float %28, %29
  %31 = fadd float %30, %27
  %32 = tail call float @sqrtf(float %31) #11
  %33 = fadd float %32, 0xBF847AE140000000
  ret float %33
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4obj2N7swizzle7vector_IfJLm0ELm1ELm2EEEEf(%"struct.swizzle::vector_"* nocapture readonly %0, float %1) local_unnamed_addr #5 {
  %3 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %4 = load float, float* %3, align 4, !tbaa !2
  %5 = fadd float %4, 0x3FC99999A0000000
  %6 = fdiv float %5, 0x3FC99999A0000000
  %7 = fadd float %6, 5.000000e-01
  %8 = tail call float @llvm.floor.f32(float %7) #11
  %9 = tail call float @llvm.maxnum.f32(float %8, float -2.100000e+01) #11
  %10 = tail call float @llvm.minnum.f32(float %9, float 2.300000e+01) #11
  %11 = fmul float %10, 0x3FC99999A0000000
  %12 = fsub float %5, %11
  %13 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %14 = load float, float* %13, align 4, !tbaa !2
  %15 = fadd float %14, 0xBFC7AE1480000000
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = fadd float %17, 0xBFD3333340000000
  %19 = fdiv float %4, 0x3FC99999A0000000
  %20 = fadd float %19, 5.000000e-01
  %21 = tail call float @llvm.floor.f32(float %20) #11
  %22 = tail call float @fmodf(float %21, float 7.000000e+00) #11
  %23 = tail call float @llvm.fabs.f32(float %12) #11
  %24 = tail call float @llvm.fabs.f32(float %15) #11
  %25 = tail call float @llvm.fabs.f32(float %18) #11
  %26 = fadd float %23, 0xBFA9999980000000
  %27 = fadd float %24, 0xBFB0A3D720000000
  %28 = fadd float %25, 0xBFD8F5C2A0000000
  %29 = tail call float @llvm.maxnum.f32(float %26, float 0.000000e+00) #11
  %30 = tail call float @llvm.maxnum.f32(float %27, float 0.000000e+00) #11
  %31 = tail call float @llvm.maxnum.f32(float %28, float 0.000000e+00) #11
  %32 = fmul float %29, %29
  %33 = fmul float %30, %30
  %34 = fmul float %31, %31
  %35 = fadd float %33, %34
  %36 = fadd float %35, %32
  %37 = tail call float @sqrtf(float %36) #11
  %38 = fadd float %37, 0xBF847AE140000000
  ret float %38
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4obj3N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !5, !noalias !54
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !54
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !54
  %8 = fadd float %7, 0xBFFB333340000000
  %9 = tail call float @llvm.fabs.f32(float %3) #11
  %10 = tail call float @llvm.fabs.f32(float %5) #11
  %11 = tail call float @llvm.fabs.f32(float %8) #11
  %12 = fadd float %9, 0xC0159999A0000000
  %13 = fadd float %10, 0xBFE3333340000000
  %14 = fadd float %11, -1.000000e+00
  %15 = tail call float @llvm.maxnum.f32(float %12, float 0.000000e+00) #11
  %16 = tail call float @llvm.maxnum.f32(float %13, float 0.000000e+00) #11
  %17 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #11
  %18 = fmul float %15, %15
  %19 = fmul float %16, %16
  %20 = fmul float %17, %17
  %21 = fadd float %19, %20
  %22 = fadd float %18, %21
  %23 = tail call float @sqrtf(float %22) #11
  %24 = fadd float %23, 0xBFA99999A0000000
  %25 = load float, float* %2, align 4, !tbaa !5, !noalias !57
  %26 = load float, float* %4, align 4, !tbaa !5, !noalias !57
  %27 = fadd float %26, 0x3FD3333340000000
  %28 = load float, float* %6, align 4, !tbaa !5, !noalias !57
  %29 = fadd float %28, 0xBFB99999A0000000
  %30 = tail call float @llvm.fabs.f32(float %25) #11
  %31 = tail call float @llvm.fabs.f32(float %27) #11
  %32 = tail call float @llvm.fabs.f32(float %29) #11
  %33 = fadd float %30, 0xC0159999A0000000
  %34 = fadd float %31, 0xBFD3333340000000
  %35 = fadd float %32, 0xBFE3333340000000
  %36 = tail call float @llvm.maxnum.f32(float %33, float 0.000000e+00) #11
  %37 = tail call float @llvm.maxnum.f32(float %34, float 0.000000e+00) #11
  %38 = tail call float @llvm.maxnum.f32(float %35, float 0.000000e+00) #11
  %39 = fmul float %36, %36
  %40 = fmul float %37, %37
  %41 = fmul float %38, %38
  %42 = fadd float %40, %41
  %43 = fadd float %39, %42
  %44 = tail call float @sqrtf(float %43) #11
  %45 = fadd float %44, 0xBFA99999A0000000
  %46 = load float, float* %2, align 4, !tbaa !5, !noalias !60
  %47 = load float, float* %4, align 4, !tbaa !5, !noalias !60
  %48 = fadd float %47, 1.000000e+00
  %49 = load float, float* %6, align 4, !tbaa !5, !noalias !60
  %50 = fadd float %49, -2.500000e+00
  %51 = tail call float @llvm.fabs.f32(float %46) #11
  %52 = tail call float @llvm.fabs.f32(float %48) #11
  %53 = tail call float @llvm.fabs.f32(float %50) #11
  %54 = fadd float %51, 0xC0159999A0000000
  %55 = fadd float %52, -3.000000e+00
  %56 = fadd float %53, -1.000000e+00
  %57 = tail call float @llvm.maxnum.f32(float %54, float 0.000000e+00) #11
  %58 = tail call float @llvm.maxnum.f32(float %55, float 0.000000e+00) #11
  %59 = tail call float @llvm.maxnum.f32(float %56, float 0.000000e+00) #11
  %60 = fmul float %57, %57
  %61 = fmul float %58, %58
  %62 = fmul float %59, %59
  %63 = fadd float %61, %62
  %64 = fadd float %60, %63
  %65 = tail call float @sqrtf(float %64) #11
  %66 = fadd float %65, 0xBFA99999A0000000
  %67 = load float, float* %2, align 4, !tbaa !2
  %68 = tail call float @llvm.fabs.f32(float %67) #11
  %69 = load float, float* %4, align 4, !tbaa !5
  %70 = load float, float* %6, align 4, !tbaa !5
  %71 = fadd float %68, -5.250000e+00
  %72 = fadd float %69, 0x40019999A0000000
  %73 = fadd float %70, 0x3FD6666660000000
  %74 = fmul float %71, %71
  %75 = fmul float %73, %73
  %76 = fadd float %74, %75
  %77 = tail call float @sqrtf(float %76) #11
  %78 = tail call float @llvm.fabs.f32(float %77) #11
  %79 = tail call float @llvm.fabs.f32(float %72) #11
  %80 = fadd float %78, 0xBFB99999A0000000
  %81 = fadd float %79, 0xBFFD9999A0000000
  %82 = tail call float @llvm.maxnum.f32(float %80, float %81) #11
  %83 = tail call float @llvm.minnum.f32(float %82, float 0.000000e+00) #11
  %84 = tail call float @llvm.maxnum.f32(float %80, float 0.000000e+00) #11
  %85 = tail call float @llvm.maxnum.f32(float %81, float 0.000000e+00) #11
  %86 = fmul float %84, %84
  %87 = fmul float %85, %85
  %88 = fadd float %87, %86
  %89 = tail call float @sqrtf(float %88) #11
  %90 = fadd float %89, %83
  %91 = load float, float* %4, align 4, !tbaa !2
  %92 = fmul float %91, 1.800000e+01
  %93 = tail call float @sinf(float %92) #11
  %94 = fadd float %93, 0x3FE6666660000000
  %95 = fdiv float %94, 0x3FF6666660000000
  %96 = tail call float @llvm.maxnum.f32(float %95, float 0.000000e+00) #11
  %97 = tail call float @llvm.minnum.f32(float %96, float 1.000000e+00) #11
  %98 = fmul float %97, %97
  %99 = fmul float %97, 2.000000e+00
  %100 = fsub float 3.000000e+00, %99
  %101 = fmul float %98, %100
  %102 = fmul float %101, 0x3F9EB851E0000000
  %103 = load float, float* %4, align 4, !tbaa !2
  %104 = fmul float %103, 0x3F916872C0000000
  %105 = fadd float %104, %102
  %106 = fadd float %105, 0x3F999999A0000000
  %107 = fsub float %90, %106
  %108 = load float, float* %2, align 4, !tbaa !2
  %109 = tail call float @llvm.fabs.f32(float %108) #11
  %110 = load float, float* %6, align 4, !tbaa !5
  %111 = fadd float %109, 0xC014333340000000
  %112 = fadd float %110, 0xBFD3333340000000
  %113 = tail call float @llvm.fabs.f32(float %111) #11
  %114 = tail call float @llvm.fabs.f32(float %103) #11
  %115 = tail call float @llvm.fabs.f32(float %112) #11
  %116 = fadd float %113, 0xBFD6666660000000
  %117 = fadd float %114, 0xBFC99999A0000000
  %118 = fadd float %115, 0xBFE99999A0000000
  %119 = tail call float @llvm.maxnum.f32(float %116, float 0.000000e+00) #11
  %120 = tail call float @llvm.maxnum.f32(float %117, float 0.000000e+00) #11
  %121 = tail call float @llvm.maxnum.f32(float %118, float 0.000000e+00) #11
  %122 = fmul float %119, %119
  %123 = fmul float %120, %120
  %124 = fmul float %121, %121
  %125 = fadd float %123, %124
  %126 = fadd float %122, %125
  %127 = tail call float @sqrtf(float %126) #11
  %128 = fadd float %127, 0xBFA99999A0000000
  %129 = tail call float @llvm.minnum.f32(float %24, float %45) #11
  %130 = tail call float @llvm.minnum.f32(float %129, float %66) #11
  %131 = tail call float @llvm.minnum.f32(float %130, float %107) #11
  %132 = tail call float @llvm.minnum.f32(float %131, float %128) #11
  ret float %132
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local float @_Z4obj4N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = fadd float %3, 3.750000e+00
  ret float %4
}

; Function Attrs: nounwind readonly uwtable
define dso_local float @_Z4obj5N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = fsub float 3.500000e+00, %3
  %5 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %6 = load float, float* %5, align 4, !tbaa !2
  %7 = fadd float %6, 6.500000e+00
  %8 = tail call float @llvm.minnum.f32(float %4, float %7) #11
  ret float %8
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4obj6N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !5, !noalias !63
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !63
  %6 = fadd float %5, 0xBFF4CCCCC0000000
  %7 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %8 = load float, float* %7, align 4, !tbaa !5, !noalias !63
  %9 = fadd float %8, 0xBFF251EB80000000
  %10 = tail call float @llvm.fabs.f32(float %3) #11
  %11 = fmul float %10, 0x3FE3333340000000
  %12 = fsub float 1.000000e+00, %10
  %13 = fmul float %11, %12
  %14 = fadd float %9, %13
  %15 = fmul float %6, 0x3FECCCCCC0000000
  %16 = fmul float %14, 0x3FDA3D70A0000000
  %17 = fadd float %15, %16
  %18 = fmul float %6, 0x3FDA3D70A0000000
  %19 = fmul float %14, 0x3FECCCCCC0000000
  %20 = fsub float %19, %18
  %21 = tail call float @llvm.fabs.f32(float %17) #11
  %22 = tail call float @llvm.fabs.f32(float %20) #11
  %23 = fadd float %10, -1.000000e+00
  %24 = fadd float %21, 0xBFE6666660000000
  %25 = tail call float @llvm.maxnum.f32(float %23, float 0.000000e+00) #11
  %26 = tail call float @llvm.maxnum.f32(float %24, float 0.000000e+00) #11
  %27 = tail call float @llvm.maxnum.f32(float %22, float 0.000000e+00) #11
  %28 = fmul float %25, %25
  %29 = fmul float %26, %26
  %30 = fmul float %27, %27
  %31 = fadd float %30, %29
  %32 = fadd float %28, %31
  %33 = tail call float @sqrtf(float %32) #11
  %34 = fadd float %33, 0xBF847AE140000000
  %35 = fmul float %34, 5.000000e-01
  %36 = fadd float %35, 0xBF847AE140000000
  ret float %36
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4obj8N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !5, !noalias !66
  %4 = fadd float %3, 5.000000e-01
  %5 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %6 = load float, float* %5, align 4, !tbaa !5, !noalias !66
  %7 = fadd float %6, 0x3FFCCCCCC0000000
  %8 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %9 = load float, float* %8, align 4, !tbaa !5, !noalias !66
  %10 = fadd float %9, 2.000000e+00
  %11 = fmul float %4, 0x3FECCCCCC0000000
  %12 = fmul float %10, 0x3FDC28F5C0000000
  %13 = fsub float %11, %12
  %14 = fmul float %4, 0x3FDC28F5C0000000
  %15 = fmul float %10, 0x3FECCCCCC0000000
  %16 = fadd float %14, %15
  %17 = fmul float %13, 8.000000e+00
  %18 = tail call float @sinf(float %17) #11
  %19 = fmul float %18, 5.000000e-01
  %20 = fmul float %16, 8.000000e+00
  %21 = tail call float @sinf(float %20) #11
  %22 = fmul float %19, %21
  %23 = fadd float %22, 5.000000e-01
  %24 = tail call float @powf(float %23, float 3.000000e+00) #11
  %25 = fmul float %24, 0x3FB99999A0000000
  %26 = fadd float %7, 0xBFB99999A0000000
  %27 = fdiv float %26, 0x3FD3333340000000
  %28 = tail call float @llvm.maxnum.f32(float %27, float 0.000000e+00) #11
  %29 = tail call float @llvm.minnum.f32(float %28, float 1.000000e+00) #11
  %30 = fmul float %29, %29
  %31 = fmul float %29, 2.000000e+00
  %32 = fsub float 3.000000e+00, %31
  %33 = fmul float %30, %32
  %34 = fmul float %25, %33
  %35 = tail call float @llvm.fabs.f32(float %13) #11
  %36 = tail call float @llvm.fabs.f32(float %7) #11
  %37 = tail call float @llvm.fabs.f32(float %16) #11
  %38 = fadd float %35, -1.500000e+00
  %39 = fadd float %36, -2.500000e-01
  %40 = fadd float %37, 0xBFE3333340000000
  %41 = tail call float @llvm.maxnum.f32(float %38, float 0.000000e+00) #11
  %42 = tail call float @llvm.maxnum.f32(float %39, float 0.000000e+00) #11
  %43 = tail call float @llvm.maxnum.f32(float %40, float 0.000000e+00) #11
  %44 = fmul float %41, %41
  %45 = fmul float %42, %42
  %46 = fmul float %43, %43
  %47 = fadd float %45, %46
  %48 = fadd float %44, %47
  %49 = tail call float @sqrtf(float %48) #11
  %50 = fadd float %49, 0xBFD3333340000000
  %51 = fadd float %50, %34
  %52 = fadd float %35, 0xBFF6666660000000
  %53 = fadd float %7, 0x3FF3333340000000
  %54 = fmul float %52, %52
  %55 = fmul float %40, %40
  %56 = fadd float %54, %55
  %57 = tail call float @sqrtf(float %56) #11
  %58 = tail call float @llvm.fabs.f32(float %57) #11
  %59 = tail call float @llvm.fabs.f32(float %53) #11
  %60 = fadd float %58, 0xBFC3333340000000
  %61 = fadd float %59, 0xBFF0CCCCC0000000
  %62 = tail call float @llvm.maxnum.f32(float %60, float %61) #11
  %63 = tail call float @llvm.minnum.f32(float %62, float 0.000000e+00) #11
  %64 = tail call float @llvm.maxnum.f32(float %60, float 0.000000e+00) #11
  %65 = tail call float @llvm.maxnum.f32(float %61, float 0.000000e+00) #11
  %66 = fmul float %64, %64
  %67 = fmul float %65, %65
  %68 = fadd float %67, %66
  %69 = tail call float @sqrtf(float %68) #11
  %70 = fadd float %69, %63
  %71 = tail call float @llvm.minnum.f32(float %51, float %70) #11
  ret float %71
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4obj7N7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !5, !noalias !69
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !69
  %6 = fadd float %5, 0x400CCCCCC0000000
  %7 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %8 = load float, float* %7, align 4, !tbaa !5, !noalias !69
  %9 = fadd float %8, 0xBFF3333340000000
  %10 = fadd float %3, -2.500000e-01
  %11 = tail call float @fmodf(float %10, float 5.000000e-01) #11
  %12 = fadd float %11, -2.500000e-01
  %13 = tail call float @llvm.fabs.f32(float %12) #11
  %14 = tail call float @llvm.fabs.f32(float %6) #11
  %15 = tail call float @llvm.fabs.f32(float %9) #11
  %16 = fadd float %13, 0xBFA99999A0000000
  %17 = fadd float %15, 0xBFD851EB80000000
  %18 = tail call float @llvm.maxnum.f32(float %16, float 0.000000e+00) #11
  %19 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #11
  %20 = tail call float @llvm.maxnum.f32(float %17, float 0.000000e+00) #11
  %21 = fmul float %18, %18
  %22 = fmul float %19, %19
  %23 = fmul float %20, %20
  %24 = fadd float %22, %23
  %25 = fadd float %21, %24
  %26 = tail call float @sqrtf(float %25) #11
  %27 = fadd float %26, 0xBFB47AE140000000
  %28 = fmul float %27, 5.000000e-01
  %29 = tail call float @llvm.fabs.f32(float %3) #11
  %30 = fadd float %29, -7.500000e-01
  %31 = fadd float %14, -1.000000e+00
  %32 = fadd float %15, -1.000000e+00
  %33 = tail call float @llvm.maxnum.f32(float %31, float %32) #11
  %34 = tail call float @llvm.maxnum.f32(float %30, float %33) #11
  %35 = tail call float @llvm.minnum.f32(float %34, float 0.000000e+00) #11
  %36 = tail call float @llvm.maxnum.f32(float %30, float 0.000000e+00) #11
  %37 = tail call float @llvm.maxnum.f32(float %31, float 0.000000e+00) #11
  %38 = tail call float @llvm.maxnum.f32(float %32, float 0.000000e+00) #11
  %39 = fmul float %36, %36
  %40 = fmul float %37, %37
  %41 = fmul float %38, %38
  %42 = fadd float %40, %41
  %43 = fadd float %39, %42
  %44 = tail call float @sqrtf(float %43) #11
  %45 = fadd float %44, %35
  %46 = tail call float @llvm.maxnum.f32(float %28, float %45) #11
  ret float %46
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z1fffff(float %0, float %1, float %2, float %3) local_unnamed_addr #5 {
  %5 = fmul float %0, 0x3FF4CCCCC0000000
  %6 = fmul float %1, 0x3FF4CCCCC0000000
  %7 = fmul float %2, 0x3FF4CCCCC0000000
  %8 = fmul float %3, 2.500000e+00
  %9 = fadd float %5, %8
  %10 = fadd float %9, -3.000000e+00
  %11 = fadd float %10, 0xC00921CAC0000000
  %12 = tail call float @llvm.maxnum.f32(float %11, float 0.000000e+00) #11
  %13 = tail call float @llvm.minnum.f32(float %12, float 0x400921FB40000000) #11
  %14 = tail call float @sinf(float %13) #11
  %15 = fmul float %14, %14
  %16 = fsub float %6, %15
  %17 = fadd float %5, 0x3FB99999A0000000
  %18 = fdiv float %17, 0x3FC99999A0000000
  %19 = fadd float %18, 5.000000e-01
  %20 = tail call float @llvm.floor.f32(float %19) #11
  %21 = tail call float @llvm.maxnum.f32(float %20, float -2.200000e+01) #11
  %22 = tail call float @llvm.minnum.f32(float %21, float 2.300000e+01) #11
  %23 = fmul float %22, 0x3FC99999A0000000
  %24 = fsub float %17, %23
  %25 = fadd float %16, 0xBFB99999A0000000
  %26 = fadd float %7, 0xBFB99999A0000000
  %27 = tail call float @llvm.fabs.f32(float %24) #11
  %28 = tail call float @llvm.fabs.f32(float %25) #11
  %29 = tail call float @llvm.fabs.f32(float %26) #11
  %30 = fadd float %27, 0xBFB6041880000000
  %31 = fadd float %28, 0xBFB1EB8520000000
  %32 = fadd float %29, 0xBFE30A3D80000000
  %33 = tail call float @llvm.maxnum.f32(float %30, float 0.000000e+00) #11
  %34 = tail call float @llvm.maxnum.f32(float %31, float 0.000000e+00) #11
  %35 = tail call float @llvm.maxnum.f32(float %32, float 0.000000e+00) #11
  %36 = fmul float %33, %33
  %37 = fmul float %34, %34
  %38 = fmul float %35, %35
  %39 = fadd float %38, %37
  %40 = fadd float %36, %39
  %41 = tail call float @sqrtf(float %40) #11
  %42 = fadd float %41, 0xBF847AE140000000
  %43 = fadd float %5, 0x3FC99999A0000000
  %44 = fdiv float %43, 0x3FC99999A0000000
  %45 = fadd float %44, 5.000000e-01
  %46 = tail call float @llvm.floor.f32(float %45) #11
  %47 = tail call float @llvm.maxnum.f32(float %46, float -2.100000e+01) #11
  %48 = tail call float @llvm.minnum.f32(float %47, float 2.300000e+01) #11
  %49 = fmul float %48, 0x3FC99999A0000000
  %50 = fsub float %43, %49
  %51 = fadd float %16, 0xBFC7AE1480000000
  %52 = fadd float %7, 0xBFD3333340000000
  %53 = fdiv float %5, 0x3FC99999A0000000
  %54 = fadd float %53, 5.000000e-01
  %55 = tail call float @llvm.floor.f32(float %54) #11
  %56 = tail call float @fmodf(float %55, float 7.000000e+00) #11
  %57 = tail call float @llvm.fabs.f32(float %50) #11
  %58 = tail call float @llvm.fabs.f32(float %51) #11
  %59 = tail call float @llvm.fabs.f32(float %52) #11
  %60 = fadd float %57, 0xBFA9999980000000
  %61 = fadd float %58, 0xBFB0A3D720000000
  %62 = fadd float %59, 0xBFD8F5C2A0000000
  %63 = tail call float @llvm.maxnum.f32(float %60, float 0.000000e+00) #11
  %64 = tail call float @llvm.maxnum.f32(float %61, float 0.000000e+00) #11
  %65 = tail call float @llvm.maxnum.f32(float %62, float 0.000000e+00) #11
  %66 = fmul float %63, %63
  %67 = fmul float %64, %64
  %68 = fmul float %65, %65
  %69 = fadd float %68, %67
  %70 = fadd float %66, %69
  %71 = tail call float @sqrtf(float %70) #11
  %72 = fadd float %71, 0xBF847AE140000000
  %73 = tail call float @llvm.minnum.f32(float %42, float %72) #11
  %74 = fmul float %6, 0x3FEE666660000000
  %75 = fadd float %7, 0xBFFB333340000000
  %76 = tail call float @llvm.fabs.f32(float %5) #11
  %77 = tail call float @llvm.fabs.f32(float %74) #11
  %78 = tail call float @llvm.fabs.f32(float %75) #11
  %79 = fadd float %76, 0xC0159999A0000000
  %80 = fadd float %77, 0xBFE3333340000000
  %81 = fadd float %78, -1.000000e+00
  %82 = tail call float @llvm.maxnum.f32(float %79, float 0.000000e+00) #11
  %83 = tail call float @llvm.maxnum.f32(float %80, float 0.000000e+00) #11
  %84 = tail call float @llvm.maxnum.f32(float %81, float 0.000000e+00) #11
  %85 = fmul float %82, %82
  %86 = fmul float %83, %83
  %87 = fmul float %84, %84
  %88 = fadd float %86, %87
  %89 = fadd float %85, %88
  %90 = tail call float @sqrtf(float %89) #11
  %91 = fadd float %90, 0xBFA99999A0000000
  %92 = fadd float %74, 0x3FD3333340000000
  %93 = tail call float @llvm.fabs.f32(float %92) #11
  %94 = fadd float %93, 0xBFD3333340000000
  %95 = fadd float %29, 0xBFE3333340000000
  %96 = tail call float @llvm.maxnum.f32(float %94, float 0.000000e+00) #11
  %97 = tail call float @llvm.maxnum.f32(float %95, float 0.000000e+00) #11
  %98 = fmul float %96, %96
  %99 = fmul float %97, %97
  %100 = fadd float %98, %99
  %101 = fadd float %85, %100
  %102 = tail call float @sqrtf(float %101) #11
  %103 = fadd float %102, 0xBFA99999A0000000
  %104 = fadd float %74, 1.000000e+00
  %105 = fadd float %7, -2.500000e+00
  %106 = tail call float @llvm.fabs.f32(float %104) #11
  %107 = tail call float @llvm.fabs.f32(float %105) #11
  %108 = fadd float %106, -3.000000e+00
  %109 = fadd float %107, -1.000000e+00
  %110 = tail call float @llvm.maxnum.f32(float %108, float 0.000000e+00) #11
  %111 = tail call float @llvm.maxnum.f32(float %109, float 0.000000e+00) #11
  %112 = fmul float %110, %110
  %113 = fmul float %111, %111
  %114 = fadd float %112, %113
  %115 = fadd float %85, %114
  %116 = tail call float @sqrtf(float %115) #11
  %117 = fadd float %116, 0xBFA99999A0000000
  %118 = fadd float %76, -5.250000e+00
  %119 = fadd float %74, 0x40019999A0000000
  %120 = fadd float %7, 0x3FD6666660000000
  %121 = fmul float %118, %118
  %122 = fmul float %120, %120
  %123 = fadd float %121, %122
  %124 = tail call float @sqrtf(float %123) #11
  %125 = tail call float @llvm.fabs.f32(float %124) #11
  %126 = tail call float @llvm.fabs.f32(float %119) #11
  %127 = fadd float %125, 0xBFB99999A0000000
  %128 = fadd float %126, 0xBFFD9999A0000000
  %129 = tail call float @llvm.maxnum.f32(float %127, float %128) #11
  %130 = tail call float @llvm.minnum.f32(float %129, float 0.000000e+00) #11
  %131 = tail call float @llvm.maxnum.f32(float %127, float 0.000000e+00) #11
  %132 = tail call float @llvm.maxnum.f32(float %128, float 0.000000e+00) #11
  %133 = fmul float %131, %131
  %134 = fmul float %132, %132
  %135 = fadd float %134, %133
  %136 = tail call float @sqrtf(float %135) #11
  %137 = fadd float %136, %130
  %138 = fmul float %74, 1.800000e+01
  %139 = tail call float @sinf(float %138) #11
  %140 = fadd float %139, 0x3FE6666660000000
  %141 = fdiv float %140, 0x3FF6666660000000
  %142 = tail call float @llvm.maxnum.f32(float %141, float 0.000000e+00) #11
  %143 = tail call float @llvm.minnum.f32(float %142, float 1.000000e+00) #11
  %144 = fmul float %143, %143
  %145 = fmul float %143, 2.000000e+00
  %146 = fsub float 3.000000e+00, %145
  %147 = fmul float %144, %146
  %148 = fmul float %147, 0x3F9EB851E0000000
  %149 = fmul float %74, 0x3F916872C0000000
  %150 = fadd float %149, %148
  %151 = fadd float %150, 0x3F999999A0000000
  %152 = fsub float %137, %151
  %153 = fadd float %76, 0xC014333340000000
  %154 = tail call float @llvm.fabs.f32(float %153) #11
  %155 = fadd float %154, 0xBFD6666660000000
  %156 = fadd float %77, 0xBFC99999A0000000
  %157 = fadd float %59, 0xBFE99999A0000000
  %158 = tail call float @llvm.maxnum.f32(float %155, float 0.000000e+00) #11
  %159 = tail call float @llvm.maxnum.f32(float %156, float 0.000000e+00) #11
  %160 = tail call float @llvm.maxnum.f32(float %157, float 0.000000e+00) #11
  %161 = fmul float %158, %158
  %162 = fmul float %159, %159
  %163 = fmul float %160, %160
  %164 = fadd float %162, %163
  %165 = fadd float %161, %164
  %166 = tail call float @sqrtf(float %165) #11
  %167 = fadd float %166, 0xBFA99999A0000000
  %168 = tail call float @llvm.minnum.f32(float %91, float %103) #11
  %169 = tail call float @llvm.minnum.f32(float %168, float %117) #11
  %170 = tail call float @llvm.minnum.f32(float %169, float %152) #11
  %171 = tail call float @llvm.minnum.f32(float %170, float %167) #11
  %172 = tail call float @llvm.minnum.f32(float %73, float %171) #11
  %173 = fadd float %6, 3.750000e+00
  %174 = tail call float @llvm.minnum.f32(float %172, float %173) #11
  %175 = fadd float %6, 0xBFF4CCCCC0000000
  %176 = fadd float %7, 0xBFF251EB80000000
  %177 = fmul float %76, 0x3FE3333340000000
  %178 = fsub float 1.000000e+00, %76
  %179 = fmul float %177, %178
  %180 = fadd float %176, %179
  %181 = fmul float %175, 0x3FECCCCCC0000000
  %182 = fmul float %180, 0x3FDA3D70A0000000
  %183 = fadd float %181, %182
  %184 = fmul float %175, 0x3FDA3D70A0000000
  %185 = fmul float %180, 0x3FECCCCCC0000000
  %186 = fsub float %185, %184
  %187 = tail call float @llvm.fabs.f32(float %183) #11
  %188 = tail call float @llvm.fabs.f32(float %186) #11
  %189 = fadd float %76, -1.000000e+00
  %190 = fadd float %187, 0xBFE6666660000000
  %191 = tail call float @llvm.maxnum.f32(float %189, float 0.000000e+00) #11
  %192 = tail call float @llvm.maxnum.f32(float %190, float 0.000000e+00) #11
  %193 = tail call float @llvm.maxnum.f32(float %188, float 0.000000e+00) #11
  %194 = fmul float %191, %191
  %195 = fmul float %192, %192
  %196 = fmul float %193, %193
  %197 = fadd float %196, %195
  %198 = fadd float %194, %197
  %199 = tail call float @sqrtf(float %198) #11
  %200 = fadd float %199, 0xBF847AE140000000
  %201 = fmul float %200, 5.000000e-01
  %202 = fadd float %201, 0xBF847AE140000000
  %203 = tail call float @llvm.minnum.f32(float %174, float %202) #11
  %204 = fadd float %6, 0x400CCCCCC0000000
  %205 = fadd float %7, 0xBFF3333340000000
  %206 = fadd float %5, -2.500000e-01
  %207 = tail call float @fmodf(float %206, float 5.000000e-01) #11
  %208 = fadd float %207, -2.500000e-01
  %209 = tail call float @llvm.fabs.f32(float %208) #11
  %210 = tail call float @llvm.fabs.f32(float %204) #11
  %211 = tail call float @llvm.fabs.f32(float %205) #11
  %212 = fadd float %209, 0xBFA99999A0000000
  %213 = fadd float %211, 0xBFD851EB80000000
  %214 = tail call float @llvm.maxnum.f32(float %212, float 0.000000e+00) #11
  %215 = tail call float @llvm.maxnum.f32(float %210, float 0.000000e+00) #11
  %216 = tail call float @llvm.maxnum.f32(float %213, float 0.000000e+00) #11
  %217 = fmul float %214, %214
  %218 = fmul float %215, %215
  %219 = fmul float %216, %216
  %220 = fadd float %218, %219
  %221 = fadd float %220, %217
  %222 = tail call float @sqrtf(float %221) #11
  %223 = fadd float %222, 0xBFB47AE140000000
  %224 = fmul float %223, 5.000000e-01
  %225 = fadd float %76, -7.500000e-01
  %226 = fadd float %210, -1.000000e+00
  %227 = fadd float %211, -1.000000e+00
  %228 = tail call float @llvm.maxnum.f32(float %226, float %227) #11
  %229 = tail call float @llvm.maxnum.f32(float %225, float %228) #11
  %230 = tail call float @llvm.minnum.f32(float %229, float 0.000000e+00) #11
  %231 = tail call float @llvm.maxnum.f32(float %225, float 0.000000e+00) #11
  %232 = tail call float @llvm.maxnum.f32(float %226, float 0.000000e+00) #11
  %233 = tail call float @llvm.maxnum.f32(float %227, float 0.000000e+00) #11
  %234 = fmul float %231, %231
  %235 = fmul float %232, %232
  %236 = fmul float %233, %233
  %237 = fadd float %235, %236
  %238 = fadd float %234, %237
  %239 = tail call float @sqrtf(float %238) #11
  %240 = fadd float %230, %239
  %241 = tail call float @llvm.maxnum.f32(float %224, float %240) #11
  %242 = tail call float @llvm.minnum.f32(float %203, float %241) #11
  %243 = fadd float %5, 5.000000e-01
  %244 = fadd float %6, 0x3FFCCCCCC0000000
  %245 = fadd float %7, 2.000000e+00
  %246 = fmul float %243, 0x3FECCCCCC0000000
  %247 = fmul float %245, 0x3FDC28F5C0000000
  %248 = fsub float %246, %247
  %249 = fmul float %243, 0x3FDC28F5C0000000
  %250 = fmul float %245, 0x3FECCCCCC0000000
  %251 = fadd float %249, %250
  %252 = fmul float %248, 8.000000e+00
  %253 = tail call float @sinf(float %252) #11
  %254 = fmul float %253, 5.000000e-01
  %255 = fmul float %251, 8.000000e+00
  %256 = tail call float @sinf(float %255) #11
  %257 = fmul float %254, %256
  %258 = fadd float %257, 5.000000e-01
  %259 = tail call float @powf(float %258, float 3.000000e+00) #11
  %260 = fmul float %259, 0x3FB99999A0000000
  %261 = fadd float %244, 0xBFB99999A0000000
  %262 = fdiv float %261, 0x3FD3333340000000
  %263 = tail call float @llvm.maxnum.f32(float %262, float 0.000000e+00) #11
  %264 = tail call float @llvm.minnum.f32(float %263, float 1.000000e+00) #11
  %265 = fmul float %264, %264
  %266 = fmul float %264, 2.000000e+00
  %267 = fsub float 3.000000e+00, %266
  %268 = fmul float %265, %267
  %269 = fmul float %268, %260
  %270 = tail call float @llvm.fabs.f32(float %248) #11
  %271 = tail call float @llvm.fabs.f32(float %244) #11
  %272 = tail call float @llvm.fabs.f32(float %251) #11
  %273 = fadd float %270, -1.500000e+00
  %274 = fadd float %271, -2.500000e-01
  %275 = fadd float %272, 0xBFE3333340000000
  %276 = tail call float @llvm.maxnum.f32(float %273, float 0.000000e+00) #11
  %277 = tail call float @llvm.maxnum.f32(float %274, float 0.000000e+00) #11
  %278 = tail call float @llvm.maxnum.f32(float %275, float 0.000000e+00) #11
  %279 = fmul float %276, %276
  %280 = fmul float %277, %277
  %281 = fmul float %278, %278
  %282 = fadd float %280, %281
  %283 = fadd float %279, %282
  %284 = tail call float @sqrtf(float %283) #11
  %285 = fadd float %284, 0xBFD3333340000000
  %286 = fadd float %285, %269
  %287 = fadd float %270, 0xBFF6666660000000
  %288 = fadd float %244, 0x3FF3333340000000
  %289 = fmul float %287, %287
  %290 = fmul float %275, %275
  %291 = fadd float %289, %290
  %292 = tail call float @sqrtf(float %291) #11
  %293 = tail call float @llvm.fabs.f32(float %292) #11
  %294 = tail call float @llvm.fabs.f32(float %288) #11
  %295 = fadd float %293, 0xBFC3333340000000
  %296 = fadd float %294, 0xBFF0CCCCC0000000
  %297 = tail call float @llvm.maxnum.f32(float %295, float %296) #11
  %298 = tail call float @llvm.minnum.f32(float %297, float 0.000000e+00) #11
  %299 = tail call float @llvm.maxnum.f32(float %295, float 0.000000e+00) #11
  %300 = tail call float @llvm.maxnum.f32(float %296, float 0.000000e+00) #11
  %301 = fmul float %299, %299
  %302 = fmul float %300, %300
  %303 = fadd float %302, %301
  %304 = tail call float @sqrtf(float %303) #11
  %305 = fadd float %304, %298
  %306 = tail call float @llvm.minnum.f32(float %286, float %305) #11
  %307 = tail call float @llvm.minnum.f32(float %242, float %306) #11
  %308 = fsub float 0xC0099999A0000000, %2
  %309 = tail call float @llvm.maxnum.f32(float %307, float %308) #11
  %310 = fadd float %2, 0xC00B333340000000
  %311 = tail call float @llvm.maxnum.f32(float %309, float %310) #11
  %312 = fsub float 0xC00A666660000000, %1
  %313 = tail call float @llvm.maxnum.f32(float %311, float %312) #11
  %314 = fsub float %0, %2
  %315 = fadd float %314, -5.000000e+00
  %316 = tail call float @llvm.maxnum.f32(float %313, float %315) #11
  %317 = fneg float %0
  %318 = fsub float %317, %2
  %319 = fadd float %318, -5.000000e+00
  %320 = tail call float @llvm.maxnum.f32(float %316, float %319) #11
  %321 = fsub float 0xC013333340000000, %0
  %322 = tail call float @llvm.maxnum.f32(float %320, float %321) #11
  %323 = fadd float %0, 0xC013333340000000
  %324 = tail call float @llvm.maxnum.f32(float %322, float %323) #11
  ret float %324
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nofree nounwind
declare dso_local float @fmodf(float, float) local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nofree nounwind
declare dso_local float @sinf(float) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local float @cosf(float) local_unnamed_addr #9

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #8

; Function Attrs: nofree nounwind
declare dso_local float @powf(float, float) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local float @sqrtf(float) local_unnamed_addr #9

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_piano.cpp() #10 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }

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
!21 = distinct !{!21, !22, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEE5decayEv: argument 0"}
!22 = distinct !{!22, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEE5decayEv"}
!23 = distinct !{!23, !24, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEEcvS3_Ev: argument 0"}
!24 = distinct !{!24, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEEcvS3_Ev"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1EEEES3_: argument 0"}
!27 = distinct !{!27, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1EEEES3_"}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE8call_absERKS1_: argument 0"}
!30 = distinct !{!30, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE8call_absERKS1_"}
!31 = distinct !{!31, !32, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_: argument 0"}
!32 = distinct !{!32, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!35 = distinct !{!35, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE14call_normalizeERKS1_: argument 0"}
!38 = distinct !{!38, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE14call_normalizeERKS1_"}
!39 = distinct !{!39, !40, !"_Z9normalizeIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE14call_normalizefp_spfp0_EEEOS6_DpOS7_: argument 0"}
!40 = distinct !{!40, !"_Z9normalizeIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE14call_normalizefp_spfp0_EEEOS6_DpOS7_"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE8call_absERKS1_: argument 0"}
!43 = distinct !{!43, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE8call_absERKS1_"}
!44 = distinct !{!44, !45, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_: argument 0"}
!45 = distinct !{!45, !"_Z3absIRN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE8call_absfp_spfp0_EEEOS6_DpOS7_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!48 = distinct !{!48, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm1ELm2EEE5decayEv: argument 0"}
!51 = distinct !{!51, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm1ELm2EEE5decayEv"}
!52 = distinct !{!52, !53, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm1ELm2EEEcvS3_Ev: argument 0"}
!53 = distinct !{!53, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm1ELm2EEEcvS3_Ev"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!56 = distinct !{!56, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!59 = distinct !{!59, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!62 = distinct !{!62, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!65 = distinct !{!65, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!68 = distinct !{!68, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_: argument 0"}
!71 = distinct !{!71, !"_ZN7swizzlemiERKNS_7vector_IfJLm0ELm1ELm2EEEES3_"}

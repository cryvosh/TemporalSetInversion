; ModuleID = 'cables.cpp'
source_filename = "cables.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_cables.cpp, i8* null }]

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

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z12mysmoothstepfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = fsub float %1, %0
  %5 = tail call float @llvm.maxnum.f32(float %2, float 0.000000e+00) #9
  %6 = tail call float @llvm.minnum.f32(float %5, float 1.000000e+00) #9
  %7 = tail call float @llvm.maxnum.f32(float %6, float 0.000000e+00) #9
  %8 = tail call float @llvm.minnum.f32(float %7, float 1.000000e+00) #9
  %9 = fmul float %8, %8
  %10 = fmul float %8, 2.000000e+00
  %11 = fsub float 3.000000e+00, %10
  %12 = fmul float %9, %11
  %13 = fmul float %4, %12
  %14 = fadd float %13, %0
  ret float %14
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z8rotate2Df(%"struct.swizzle::matrix_"* noalias nocapture sret align 4 %0, float %1) local_unnamed_addr #5 {
  %3 = tail call float @cosf(float %1) #9
  %4 = tail call float @sinf(float %1) #9
  %5 = fneg float %4
  %6 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %3, float* %6, align 4, !tbaa !5
  %7 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %4, float* %7, align 4, !tbaa !5
  %8 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %5, float* %8, align 4, !tbaa !5
  %9 = getelementptr inbounds %"struct.swizzle::matrix_", %"struct.swizzle::matrix_"* %0, i64 0, i32 0, i32 0, i64 1, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %3, float* %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z4smaxfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = fsub float %1, %0
  %5 = tail call float @llvm.fabs.f32(float %4) #9
  %6 = fsub float %2, %5
  %7 = tail call float @llvm.maxnum.f32(float %6, float 0.000000e+00) #9
  %8 = fdiv float %7, %2
  %9 = tail call float @llvm.maxnum.f32(float %0, float %1)
  %10 = fneg float %9
  %11 = fmul float %8, %8
  %12 = fmul float %11, %2
  %13 = fmul float %12, 2.500000e-01
  %14 = fsub float %10, %13
  %15 = fneg float %14
  ret float %15
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z1fffff(float %0, float %1, float %2, float %3) local_unnamed_addr #5 {
  %5 = fmul float %3, 0x3FE99999A0000000
  %6 = fmul float %0, 0x3FECCCCCC0000000
  %7 = fmul float %1, 0x3FECCCCCC0000000
  %8 = fmul float %2, 0xBFECCCCCC0000000
  %9 = fmul float %7, 0x3FE9E377A0000000
  %10 = fmul float %8, 0x3FE2CF2300000000
  %11 = fadd float %9, %10
  %12 = fmul float %7, 0x3FE2CF2300000000
  %13 = fmul float %8, 0x3FE9E377A0000000
  %14 = fsub float %13, %12
  %15 = fadd float %11, -5.000000e-01
  %16 = tail call float @cosf(float %5) #9
  %17 = tail call float @sinf(float %5) #9
  %18 = fmul float %16, 3.000000e+00
  %19 = fmul float %17, 3.000000e+00
  %20 = fsub float %18, %6
  %21 = fsub float 0.000000e+00, %15
  %22 = fsub float %19, %14
  %23 = fmul float %20, %20
  %24 = fmul float %21, %21
  %25 = fmul float %22, %22
  %26 = fadd float %24, %25
  %27 = fadd float %23, %26
  %28 = tail call float @sqrtf(float %27) #9
  %29 = fadd float %6, 0x3FB99999A0000000
  %30 = fadd float %15, 0x3FB99999A0000000
  %31 = fadd float %14, 0x3FB99999A0000000
  %32 = fneg float %28
  %33 = tail call float @expf(float %32) #9
  %34 = fadd float %33, 0xBFC5C28F60000000
  %35 = tail call float @llvm.maxnum.f32(float %34, float 0.000000e+00) #9
  %36 = fsub float %18, %29
  %37 = fsub float 0.000000e+00, %30
  %38 = fsub float %19, %31
  %39 = fmul float %36, %36
  %40 = fmul float %37, %37
  %41 = fmul float %38, %38
  %42 = fadd float %40, %41
  %43 = fadd float %39, %42
  %44 = tail call float @sqrtf(float %43) #9, !noalias !20
  %45 = fdiv float 1.000000e+00, %44
  %46 = fmul float %36, %45
  %47 = fmul float %37, %45
  %48 = fmul float %38, %45
  %49 = fmul float %35, %46
  %50 = fmul float %35, %47
  %51 = fmul float %35, %48
  %52 = fadd float %29, %49
  %53 = fadd float %30, %50
  %54 = fadd float %31, %51
  %55 = tail call float @atan2f(float %54, float %52) #9, !noalias !25
  %56 = fmul float %55, 3.000000e+00
  %57 = fmul float %52, %52
  %58 = fmul float %54, %54
  %59 = fadd float %57, %58
  %60 = fadd float %56, 0x3FCACEEA00000000
  %61 = tail call float @sqrtf(float %59) #9
  %62 = tail call float @cosf(float %60) #9
  %63 = fmul float %62, 5.000000e-01
  %64 = fadd float %61, %63
  %65 = fadd float %64, -3.000000e+00
  %66 = tail call float @sinf(float %60) #9
  %67 = fmul float %66, 5.000000e-01
  %68 = fadd float %53, %67
  %69 = fmul float %65, %65
  %70 = fmul float %68, %68
  %71 = fadd float %69, %70
  %72 = tail call float @sqrtf(float %71) #9
  %73 = fadd float %72, 0xBFB22D0E60000000
  %74 = tail call float @llvm.minnum.f32(float %73, float 1.000000e+02) #9
  %75 = fadd float %60, 0x3FCACEEA00000000
  %76 = tail call float @sqrtf(float %59) #9
  %77 = tail call float @cosf(float %75) #9
  %78 = fmul float %77, 0x3FD531D620000000
  %79 = fadd float %76, %78
  %80 = fadd float %79, -3.000000e+00
  %81 = tail call float @sinf(float %75) #9
  %82 = fmul float %81, 0x3FD531D620000000
  %83 = fadd float %53, %82
  %84 = fmul float %80, %80
  %85 = fmul float %83, %83
  %86 = fadd float %84, %85
  %87 = tail call float @sqrtf(float %86) #9
  %88 = fadd float %87, 0xBFB22D0E60000000
  %89 = tail call float @llvm.minnum.f32(float %74, float %88) #9
  %90 = fadd float %75, 0x3FCACEEA00000000
  %91 = tail call float @sqrtf(float %59) #9
  %92 = tail call float @cosf(float %90) #9
  %93 = fmul float %92, 0x3FE7F814E0000000
  %94 = fadd float %91, %93
  %95 = fadd float %94, -3.000000e+00
  %96 = tail call float @sinf(float %90) #9
  %97 = fmul float %96, 0x3FE7F814E0000000
  %98 = fadd float %53, %97
  %99 = fmul float %95, %95
  %100 = fmul float %98, %98
  %101 = fadd float %99, %100
  %102 = tail call float @sqrtf(float %101) #9
  %103 = fadd float %102, 0xBFB22D0E60000000
  %104 = tail call float @llvm.minnum.f32(float %89, float %103) #9
  %105 = fadd float %90, 0x3FCACEEA00000000
  %106 = tail call float @sqrtf(float %59) #9
  %107 = tail call float @cosf(float %105) #9
  %108 = fmul float %107, 0x3FD34BD060000000
  %109 = fadd float %106, %108
  %110 = fadd float %109, -3.000000e+00
  %111 = tail call float @sinf(float %105) #9
  %112 = fmul float %111, 0x3FD34BD060000000
  %113 = fadd float %53, %112
  %114 = fmul float %110, %110
  %115 = fmul float %113, %113
  %116 = fadd float %114, %115
  %117 = tail call float @sqrtf(float %116) #9
  %118 = fadd float %117, 0xBFB22D0E60000000
  %119 = tail call float @llvm.minnum.f32(float %104, float %118) #9
  %120 = fadd float %105, 0x3FCACEEA00000000
  %121 = tail call float @sqrtf(float %59) #9
  %122 = tail call float @cosf(float %120) #9
  %123 = fmul float %122, 0x3FE1667240000000
  %124 = fadd float %121, %123
  %125 = fadd float %124, -3.000000e+00
  %126 = tail call float @sinf(float %120) #9
  %127 = fmul float %126, 0x3FE1667240000000
  %128 = fadd float %53, %127
  %129 = fmul float %125, %125
  %130 = fmul float %128, %128
  %131 = fadd float %129, %130
  %132 = tail call float @sqrtf(float %131) #9
  %133 = fadd float %132, 0xBFB22D0E60000000
  %134 = tail call float @llvm.minnum.f32(float %119, float %133) #9
  %135 = fadd float %120, 0x3FCACEEA00000000
  %136 = tail call float @sqrtf(float %59) #9
  %137 = tail call float @cosf(float %135) #9
  %138 = fmul float %137, 0x3FE4495EA0000000
  %139 = fadd float %136, %138
  %140 = fadd float %139, -3.000000e+00
  %141 = tail call float @sinf(float %135) #9
  %142 = fmul float %141, 0x3FE4495EA0000000
  %143 = fadd float %53, %142
  %144 = fmul float %140, %140
  %145 = fmul float %143, %143
  %146 = fadd float %144, %145
  %147 = tail call float @sqrtf(float %146) #9
  %148 = fadd float %147, 0xBFB22D0E60000000
  %149 = tail call float @llvm.minnum.f32(float %134, float %148) #9
  %150 = fadd float %135, 0x3FCACEEA00000000
  %151 = tail call float @sqrtf(float %59) #9
  %152 = tail call float @cosf(float %150) #9
  %153 = fmul float %152, 0x3FD08DCC40000000
  %154 = fadd float %151, %153
  %155 = fadd float %154, -3.000000e+00
  %156 = tail call float @sinf(float %150) #9
  %157 = fmul float %156, 0x3FD08DCC40000000
  %158 = fadd float %53, %157
  %159 = fmul float %155, %155
  %160 = fmul float %158, %158
  %161 = fadd float %159, %160
  %162 = tail call float @sqrtf(float %161) #9
  %163 = fadd float %162, 0xBFB22D0E60000000
  %164 = tail call float @llvm.minnum.f32(float %149, float %163) #9
  %165 = fadd float %150, 0x3FCACEEA00000000
  %166 = tail call float @sqrtf(float %59) #9
  %167 = tail call float @cosf(float %165) #9
  %168 = fmul float %167, 0x3FE71AE840000000
  %169 = fadd float %166, %168
  %170 = fadd float %169, -3.000000e+00
  %171 = tail call float @sinf(float %165) #9
  %172 = fmul float %171, 0x3FE71AE840000000
  %173 = fadd float %53, %172
  %174 = fmul float %170, %170
  %175 = fmul float %173, %173
  %176 = fadd float %174, %175
  %177 = tail call float @sqrtf(float %176) #9
  %178 = fadd float %177, 0xBFB22D0E60000000
  %179 = tail call float @llvm.minnum.f32(float %164, float %178) #9
  %180 = fadd float %165, 0x3FCACEEA00000000
  %181 = tail call float @sqrtf(float %59) #9
  %182 = tail call float @cosf(float %180) #9
  %183 = fmul float %182, 0x3FDA7C58C0000000
  %184 = fadd float %181, %183
  %185 = fadd float %184, -3.000000e+00
  %186 = tail call float @sinf(float %180) #9
  %187 = fmul float %186, 0x3FDA7C58C0000000
  %188 = fadd float %53, %187
  %189 = fmul float %185, %185
  %190 = fmul float %188, %188
  %191 = fadd float %189, %190
  %192 = tail call float @sqrtf(float %191) #9
  %193 = fadd float %192, 0xBFB22D0E60000000
  %194 = tail call float @llvm.minnum.f32(float %179, float %193) #9
  %195 = fadd float %180, 0x3FCACEEA00000000
  %196 = tail call float @sqrtf(float %59) #9
  %197 = tail call float @cosf(float %195) #9
  %198 = fmul float %197, 0x3FD9EC6E60000000
  %199 = fadd float %196, %198
  %200 = fadd float %199, -3.000000e+00
  %201 = tail call float @sinf(float %195) #9
  %202 = fmul float %201, 0x3FD9EC6E60000000
  %203 = fadd float %53, %202
  %204 = fmul float %200, %200
  %205 = fmul float %203, %203
  %206 = fadd float %204, %205
  %207 = tail call float @sqrtf(float %206) #9
  %208 = fadd float %207, 0xBFB22D0E60000000
  %209 = tail call float @llvm.minnum.f32(float %194, float %208) #9
  %210 = fadd float %195, 0x3FCACEEA00000000
  %211 = tail call float @sqrtf(float %59) #9
  %212 = tail call float @cosf(float %210) #9
  %213 = fmul float %212, 0x3FE73D1500000000
  %214 = fadd float %211, %213
  %215 = fadd float %214, -3.000000e+00
  %216 = tail call float @sinf(float %210) #9
  %217 = fmul float %216, 0x3FE73D1500000000
  %218 = fadd float %53, %217
  %219 = fmul float %215, %215
  %220 = fmul float %218, %218
  %221 = fadd float %219, %220
  %222 = tail call float @sqrtf(float %221) #9
  %223 = fadd float %222, 0xBFB22D0E60000000
  %224 = tail call float @llvm.minnum.f32(float %209, float %223) #9
  %225 = fadd float %210, 0x3FCACEEA00000000
  %226 = tail call float @sqrtf(float %59) #9
  %227 = tail call float @cosf(float %225) #9
  %228 = fmul float %227, 0x3FD0B8E020000000
  %229 = fadd float %226, %228
  %230 = fadd float %229, -3.000000e+00
  %231 = tail call float @sinf(float %225) #9
  %232 = fmul float %231, 0x3FD0B8E020000000
  %233 = fadd float %53, %232
  %234 = fmul float %230, %230
  %235 = fmul float %233, %233
  %236 = fadd float %234, %235
  %237 = tail call float @sqrtf(float %236) #9
  %238 = fadd float %237, 0xBFB22D0E60000000
  %239 = tail call float @llvm.minnum.f32(float %224, float %238) #9
  %240 = fadd float %225, 0x3FCACEEA00000000
  %241 = tail call float @sqrtf(float %59) #9
  %242 = tail call float @cosf(float %240) #9
  %243 = fmul float %242, 0x3FE4076CA0000000
  %244 = fadd float %241, %243
  %245 = fadd float %244, -3.000000e+00
  %246 = tail call float @sinf(float %240) #9
  %247 = fmul float %246, 0x3FE4076CA0000000
  %248 = fadd float %53, %247
  %249 = fmul float %245, %245
  %250 = fmul float %248, %248
  %251 = fadd float %249, %250
  %252 = tail call float @sqrtf(float %251) #9
  %253 = fadd float %252, 0xBFB22D0E60000000
  %254 = tail call float @llvm.minnum.f32(float %239, float %253) #9
  %255 = fadd float %240, 0x3FCACEEA00000000
  %256 = tail call float @sqrtf(float %59) #9
  %257 = tail call float @cosf(float %255) #9
  %258 = fmul float %257, 0x3FE1B23220000000
  %259 = fadd float %256, %258
  %260 = fadd float %259, -3.000000e+00
  %261 = tail call float @sinf(float %255) #9
  %262 = fmul float %261, 0x3FE1B23220000000
  %263 = fadd float %53, %262
  %264 = fmul float %260, %260
  %265 = fmul float %263, %263
  %266 = fadd float %264, %265
  %267 = tail call float @sqrtf(float %266) #9
  %268 = fadd float %267, 0xBFB22D0E60000000
  %269 = tail call float @llvm.minnum.f32(float %254, float %268) #9
  %270 = fadd float %255, 0x3FCACEEA00000000
  %271 = tail call float @sqrtf(float %59) #9
  %272 = tail call float @cosf(float %270) #9
  %273 = fmul float %272, 0x3FD2F04AE0000000
  %274 = fadd float %271, %273
  %275 = fadd float %274, -3.000000e+00
  %276 = tail call float @sinf(float %270) #9
  %277 = fmul float %276, 0x3FD2F04AE0000000
  %278 = fadd float %53, %277
  %279 = fmul float %275, %275
  %280 = fmul float %278, %278
  %281 = fadd float %279, %280
  %282 = tail call float @sqrtf(float %281) #9
  %283 = fadd float %282, 0xBFB22D0E60000000
  %284 = tail call float @llvm.minnum.f32(float %269, float %283) #9
  %285 = fsub float %6, %18
  %286 = fsub float %14, %19
  %287 = fmul float %285, %285
  %288 = fmul float %15, %15
  %289 = fmul float %286, %286
  %290 = fadd float %288, %289
  %291 = fadd float %287, %290
  %292 = tail call float @sqrtf(float %291) #9
  %293 = fadd float %292, 0xBFE0A3D700000000
  %294 = fmul float %293, 6.000000e+00
  %295 = tail call float @llvm.minnum.f32(float %284, float %294) #9
  %296 = fmul float %295, 1.250000e-01
  ret float %296
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
declare dso_local float @cosf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local float @sinf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local float @expf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local float @sqrtf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local float @atan2f(float, float) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cables.cpp() #8 section ".text.startup" {
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
!21 = distinct !{!21, !22, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE14call_normalizeERKS1_: argument 0"}
!22 = distinct !{!22, !"_ZN7swizzle7vector_IfJLm0ELm1ELm2EEE14call_normalizeERKS1_"}
!23 = distinct !{!23, !24, !"_Z9normalizeIN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE14call_normalizefp_spfp0_EEEOS5_DpOS6_: argument 0"}
!24 = distinct !{!24, !"_Z9normalizeIN7swizzle7vector_IfJLm0ELm1ELm2EEEEJEEDTclgssr7swizzle6detailE5decaycldtclsr3stdE7declvalINS0_6detail15get_vector_typeIT_JDpT0_EE4typeEEE14call_normalizefp_spfp0_EEEOS5_DpOS6_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN7swizzle7vector_IfJLm0EEE9call_atanERKS1_S3_: argument 0"}
!27 = distinct !{!27, !"_ZN7swizzle7vector_IfJLm0EEE9call_atanERKS1_S3_"}

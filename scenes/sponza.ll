; ModuleID = 'sponza5.cpp'
source_filename = "sponza5.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sponza5.cpp, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z3minff(float %0, float %1) local_unnamed_addr #3 {
  %3 = tail call float @llvm.minnum.f32(float %0, float %1) #10
  ret float %3
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z3maxff(float %0, float %1) local_unnamed_addr #3 {
  %3 = tail call float @llvm.maxnum.f32(float %0, float %1) #10
  ret float %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @_Z3modff(float %0, float %1) local_unnamed_addr #4 {
  %3 = tail call float @fmodf(float %0, float %1) #10
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3modN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1, %"struct.swizzle::vector_"* nocapture readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %6, align 4, !tbaa !2
  %8 = tail call float @fmodf(float %5, float %7) #10
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @fmodf(float %10, float %12) #10
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @fmodf(float %15, float %17) #10
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
  %8 = tail call float @llvm.minnum.f32(float %5, float %7) #10
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.minnum.f32(float %10, float %12) #10
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
  %8 = tail call float @llvm.maxnum.f32(float %5, float %7) #10
  %9 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.maxnum.f32(float %10, float %12) #10
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
  %8 = tail call float @llvm.minnum.f32(float %5, float %7) #10
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.minnum.f32(float %10, float %12) #10
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @llvm.minnum.f32(float %15, float %17) #10
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
  %8 = tail call float @llvm.maxnum.f32(float %5, float %7) #10
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.maxnum.f32(float %10, float %12) #10
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = load float, float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %17 = load float, float* %16, align 4, !tbaa !2
  %18 = tail call float @llvm.maxnum.f32(float %15, float %17) #10
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
  %10 = tail call float @llvm.minnum.f32(float %5, float %2) #10
  %11 = tail call float @llvm.minnum.f32(float %7, float %2) #10
  %12 = tail call float @llvm.minnum.f32(float %9, float %2) #10
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
  %8 = tail call float @llvm.minnum.f32(float %5, float %2) #10
  %9 = tail call float @llvm.minnum.f32(float %7, float %2) #10
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
  %8 = tail call float @llvm.maxnum.f32(float %5, float %2) #10
  %9 = tail call float @llvm.maxnum.f32(float %7, float %2) #10
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
  %10 = tail call float @llvm.maxnum.f32(float %5, float %2) #10
  %11 = tail call float @llvm.maxnum.f32(float %7, float %2) #10
  %12 = tail call float @llvm.maxnum.f32(float %9, float %2) #10
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
  %2 = tail call float @llvm.fabs.f32(float %0) #10
  %3 = fdiv float %0, %2
  ret float %3
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z5clampfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = tail call float @llvm.maxnum.f32(float %0, float %1) #10
  %5 = tail call float @llvm.minnum.f32(float %4, float %2) #10
  ret float %5
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z10smoothstepfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = fsub float %2, %0
  %5 = fsub float %1, %0
  %6 = fdiv float %4, %5
  %7 = tail call float @llvm.maxnum.f32(float %6, float 0.000000e+00) #10
  %8 = tail call float @llvm.minnum.f32(float %7, float 1.000000e+00) #10
  %9 = fmul float %8, %8
  %10 = fmul float %8, 2.000000e+00
  %11 = fsub float 3.000000e+00, %10
  %12 = fmul float %9, %11
  ret float %12
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z4stepff(float %0, float %1) local_unnamed_addr #3 {
  %3 = fsub float %1, %0
  %4 = tail call float @llvm.fabs.f32(float %3) #10
  %5 = fdiv float %3, %4
  %6 = fmul float %5, 5.000000e-01
  %7 = fadd float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: nounwind readonly uwtable
define dso_local float @_Z4vmaxN7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = tail call float @llvm.maxnum.f32(float %3, float %5) #10
  %7 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %8 = load float, float* %7, align 4, !tbaa !2
  %9 = tail call float @llvm.maxnum.f32(float %6, float %8) #10
  ret float %9
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z4fBoxN7swizzle7vector_IfJLm0ELm1ELm2EEEES1_(%"struct.swizzle::vector_"* nocapture readonly %0, %"struct.swizzle::vector_"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %4 = load float, float* %3, align 4, !tbaa !5, !noalias !20
  %5 = tail call float @llvm.fabs.f32(float %4) #10
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !20
  %8 = tail call float @llvm.fabs.f32(float %7) #10
  %9 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %10 = load float, float* %9, align 4, !tbaa !5, !noalias !20
  %11 = tail call float @llvm.fabs.f32(float %10) #10
  %12 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %13 = load float, float* %12, align 4, !tbaa !5, !noalias !25
  %14 = fsub float %5, %13
  %15 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %16 = load float, float* %15, align 4, !tbaa !5, !noalias !25
  %17 = fsub float %8, %16
  %18 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %19 = load float, float* %18, align 4, !tbaa !5, !noalias !25
  %20 = fsub float %11, %19
  %21 = tail call float @llvm.maxnum.f32(float %14, float 0.000000e+00) #10
  %22 = tail call float @llvm.maxnum.f32(float %17, float 0.000000e+00) #10
  %23 = tail call float @llvm.maxnum.f32(float %20, float 0.000000e+00) #10
  %24 = fmul float %21, %21
  %25 = fmul float %22, %22
  %26 = fmul float %23, %23
  %27 = fadd float %25, %26
  %28 = fadd float %24, %27
  %29 = tail call float @sqrtf(float %28) #10
  %30 = tail call float @llvm.minnum.f32(float %14, float 0.000000e+00) #10
  %31 = tail call float @llvm.minnum.f32(float %17, float 0.000000e+00) #10
  %32 = tail call float @llvm.minnum.f32(float %20, float 0.000000e+00) #10
  %33 = tail call float @llvm.maxnum.f32(float %30, float %31) #10
  %34 = tail call float @llvm.maxnum.f32(float %33, float %32) #10
  %35 = fadd float %29, %34
  ret float %35
}

; Function Attrs: nounwind readonly uwtable
define dso_local float @_Z4vmaxN7swizzle7vector_IfJLm0ELm1EEEE(%"struct.swizzle::vector_.635"* nocapture readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = tail call float @llvm.maxnum.f32(float %3, float %5) #10
  ret float %6
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @_Z9fCylinderN7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* nocapture readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %3 = load float, float* %2, align 4, !tbaa !5, !noalias !28
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !28
  %6 = fmul float %3, %3
  %7 = fmul float %5, %5
  %8 = fadd float %6, %7
  %9 = tail call float @sqrtf(float %8) #10
  %10 = fadd float %9, -5.000000e-01
  %11 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %12 = load float, float* %11, align 4, !tbaa !2
  %13 = tail call float @llvm.fabs.f32(float %12) #10
  %14 = fadd float %13, -1.000000e+00
  %15 = tail call float @llvm.maxnum.f32(float %10, float %14) #10
  ret float %15
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @_Z14domainRepeat1Dff(float %0, float %1) local_unnamed_addr #4 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fadd float %3, %0
  %5 = tail call float @fmodf(float %4, float %1) #10
  %6 = fsub float %5, %3
  ret float %6
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z9pModPolarN7swizzle7vector_IfJLm0ELm1EEEEf(%"struct.swizzle::vector_.635"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_.635"* nocapture readonly %1, float %2) local_unnamed_addr #5 {
  %4 = fdiv float 0x401921CAC0000000, %2
  %5 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %6 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %7 = load float, float* %5, align 4, !tbaa !5
  %8 = load float, float* %6, align 4, !tbaa !5
  %9 = tail call float @atan2f(float %7, float %8) #10, !noalias !33
  %10 = fmul float %4, 5.000000e-01
  %11 = fadd float %10, %9
  %12 = load float, float* %6, align 4, !tbaa !5
  %13 = fmul float %12, %12
  %14 = load float, float* %5, align 4, !tbaa !5
  %15 = fmul float %14, %14
  %16 = fadd float %13, %15
  %17 = tail call float @sqrtf(float %16) #10
  %18 = tail call float @fmodf(float %11, float %4) #10
  %19 = fsub float %18, %10
  %20 = tail call float @cosf(float %19) #10
  %21 = tail call float @sinf(float %19) #10
  %22 = fmul float %17, %20
  %23 = fmul float %17, %21
  %24 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %22, float* %24, align 4, !tbaa !5, !alias.scope !36
  %25 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %23, float* %25, align 4, !tbaa !5, !alias.scope !36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3rdXN7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %4 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = fneg float %5
  %7 = bitcast %"struct.swizzle::vector_"* %1 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = bitcast %"struct.swizzle::vector_"* %0 to i32*
  store i32 %8, i32* %9, align 4, !tbaa !5
  %10 = bitcast float* %3 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast float* %12 to i32*
  store i32 %11, i32* %13, align 4, !tbaa !5
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %6, float* %14, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3rdYN7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %4 = load float, float* %3, align 4, !tbaa !2
  %5 = fneg float %4
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %7 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %5, float* %7, align 4, !tbaa !5
  %8 = bitcast float* %6 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast float* %10 to i32*
  store i32 %9, i32* %11, align 4, !tbaa !5
  %12 = bitcast %"struct.swizzle::vector_"* %1 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = bitcast float* %14 to i32*
  store i32 %13, i32* %15, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z3rdZN7swizzle7vector_IfJLm0ELm1ELm2EEEE(%"struct.swizzle::vector_"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_"* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %4 = load float, float* %3, align 4, !tbaa !2
  %5 = fneg float %4
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %7 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %5, float* %7, align 4, !tbaa !5
  %8 = bitcast %"struct.swizzle::vector_"* %1 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast float* %10 to i32*
  store i32 %9, i32* %11, align 4, !tbaa !5
  %12 = bitcast float* %6 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %15 = bitcast float* %14 to i32*
  store i32 %13, i32* %15, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @_Z9fCylinderN7swizzle7vector_IfJLm0ELm1ELm2EEEEff(%"struct.swizzle::vector_"* nocapture readonly %0, float %1, float %2) local_unnamed_addr #4 {
  %4 = getelementptr %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !5, !noalias !39
  %6 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %7 = load float, float* %6, align 4, !tbaa !5, !noalias !39
  %8 = fmul float %5, %5
  %9 = fmul float %7, %7
  %10 = fadd float %8, %9
  %11 = tail call float @sqrtf(float %10) #10
  %12 = fsub float %11, %1
  %13 = getelementptr inbounds %"struct.swizzle::vector_", %"struct.swizzle::vector_"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %14 = load float, float* %13, align 4, !tbaa !2
  %15 = tail call float @llvm.fabs.f32(float %14) #10
  %16 = fsub float %15, %2
  %17 = tail call float @llvm.maxnum.f32(float %12, float %16) #10
  ret float %17
}

; Function Attrs: nounwind readnone uwtable
define dso_local float @_Z4sminfff(float %0, float %1, float %2) local_unnamed_addr #3 {
  %4 = fsub float %0, %1
  %5 = tail call float @llvm.fabs.f32(float %4) #10
  %6 = fsub float %2, %5
  %7 = tail call float @llvm.maxnum.f32(float %6, float 0.000000e+00) #10
  %8 = tail call float @llvm.minnum.f32(float %0, float %1) #10
  %9 = fmul float %7, %7
  %10 = fmul float %9, 2.500000e-01
  %11 = fdiv float %10, %2
  %12 = fsub float %8, %11
  ret float %12
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z6rotateN7swizzle7vector_IfJLm0ELm1EEEEf(%"struct.swizzle::vector_.635"* noalias nocapture sret align 4 %0, %"struct.swizzle::vector_.635"* nocapture readonly %1, float %2) local_unnamed_addr #5 {
  %4 = getelementptr %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = tail call float @cosf(float %2) #10
  %7 = fmul float %5, %6
  %8 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %9 = load float, float* %8, align 4, !tbaa !2
  %10 = tail call float @sinf(float %2) #10
  %11 = fmul float %9, %10
  %12 = fsub float %7, %11
  %13 = load float, float* %4, align 4, !tbaa !2
  %14 = tail call float @sinf(float %2) #10
  %15 = fmul float %13, %14
  %16 = load float, float* %8, align 4, !tbaa !2
  %17 = tail call float @cosf(float %2) #10
  %18 = fmul float %16, %17
  %19 = fadd float %15, %18
  %20 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %12, float* %20, align 4, !tbaa !5
  %21 = getelementptr inbounds %"struct.swizzle::vector_.635", %"struct.swizzle::vector_.635"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %19, float* %21, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @_Z1fffff(float %0, float %1, float %2, float %3) local_unnamed_addr #5 {
  %5 = fmul float %3, 0x3FECCCCCC0000000
  %6 = fadd float %1, 3.000000e+00
  %7 = fadd float %6, 1.500000e+00
  %8 = tail call float @fmodf(float %7, float 3.000000e+00) #10
  %9 = fadd float %8, -1.500000e+00
  %10 = fadd float %9, 0x3FECCCCCC0000000
  %11 = fmul float %0, 0x3FE6A09E60000000
  %12 = fmul float %2, 0x3FE6A09E60000000
  %13 = fadd float %11, %12
  %14 = fsub float %12, %11
  %15 = tail call float @llvm.fabs.f32(float %14) #10
  %16 = fmul float %13, 0x3FE6A09E60000000
  %17 = fmul float %15, 0x3FE6A09E60000000
  %18 = fsub float %16, %17
  %19 = fadd float %16, %17
  %20 = fadd float %18, 2.500000e+00
  %21 = fadd float %19, 2.500000e+00
  %22 = fadd float %21, 0x3FF1C28F60000000
  %23 = fadd float %22, 0x3FD8831260000000
  %24 = fmul float %20, 5.000000e-01
  %25 = fmul float %10, 5.000000e-01
  %26 = fmul float %23, 0x3FDD1EB860000000
  %27 = fadd float %25, 0x3FD2B020C0000000
  %28 = fadd float %27, 0x3FED70A3E0000000
  %29 = fadd float %26, 0xC01CFDF3C0000000
  %30 = fadd float %24, 0x3F847AE140000000
  %31 = fadd float %29, 0x3FE028F5C0000000
  %32 = tail call float @fmodf(float %31, float 0x3FF028F5C0000000) #10
  %33 = fadd float %32, 0xBFE028F5C0000000
  %34 = fmul float %30, 0.000000e+00
  %35 = fmul float %33, 0.000000e+00
  %36 = fadd float %35, 0xBFF7BE76C0000000
  %37 = fadd float %36, %28
  %38 = fadd float %34, %37
  %39 = fmul float %28, 0.000000e+00
  %40 = fadd float %35, 0xBFD4ED9160000000
  %41 = fadd float %40, %39
  %42 = fsub float %41, %30
  %43 = fadd float %33, 0.000000e+00
  %44 = fadd float %43, %39
  %45 = fadd float %34, %44
  %46 = fmul float %38, %38
  %47 = fmul float %45, %45
  %48 = fadd float %46, %47
  %49 = tail call float @sqrtf(float %48) #10
  %50 = fadd float %49, 0xBFDCCCCCC0000000
  %51 = tail call float @llvm.fabs.f32(float %42) #10
  %52 = fadd float %51, 0xBFEAC08320000000
  %53 = tail call float @llvm.maxnum.f32(float %50, float %52) #10
  %54 = fmul float %24, 0.000000e+00
  %55 = fmul float %29, 0.000000e+00
  %56 = fadd float %55, 0xBFF7851EC0000000
  %57 = fadd float %56, %28
  %58 = fadd float %54, %57
  %59 = fadd float %29, 0.000000e+00
  %60 = fadd float %59, %39
  %61 = fadd float %54, %60
  %62 = fadd float %55, 0x3FE1BA5E40000000
  %63 = fadd float %62, %39
  %64 = fadd float %24, %63
  %65 = fmul float %58, %58
  %66 = fmul float %64, %64
  %67 = fadd float %65, %66
  %68 = tail call float @sqrtf(float %67) #10
  %69 = fadd float %68, -5.000000e-01
  %70 = tail call float @llvm.fabs.f32(float %61) #10
  %71 = fadd float %70, -2.000000e+01
  %72 = tail call float @llvm.maxnum.f32(float %69, float %71) #10
  %73 = tail call float @llvm.minnum.f32(float %53, float %72) #10
  %74 = fadd float %24, 0x3FE8106240000000
  %75 = fadd float %28, 0xBFFE978D40000000
  %76 = fadd float %29, 0x401D51EB80000000
  %77 = fneg float %73
  %78 = tail call float @llvm.fabs.f32(float %74) #10
  %79 = tail call float @llvm.fabs.f32(float %75) #10
  %80 = tail call float @llvm.fabs.f32(float %76) #10
  %81 = fadd float %78, 0xBFEA0418A0000000
  %82 = fadd float %79, 0xBFDE666660000000
  %83 = fadd float %80, 0xC028353F80000000
  %84 = tail call float @llvm.maxnum.f32(float %81, float 0.000000e+00) #10
  %85 = tail call float @llvm.maxnum.f32(float %82, float 0.000000e+00) #10
  %86 = tail call float @llvm.maxnum.f32(float %83, float 0.000000e+00) #10
  %87 = fmul float %84, %84
  %88 = fmul float %85, %85
  %89 = fmul float %86, %86
  %90 = fadd float %89, %88
  %91 = fadd float %87, %90
  %92 = tail call float @sqrtf(float %91) #10
  %93 = tail call float @llvm.minnum.f32(float %81, float 0.000000e+00) #10
  %94 = tail call float @llvm.minnum.f32(float %82, float 0.000000e+00) #10
  %95 = tail call float @llvm.minnum.f32(float %83, float 0.000000e+00) #10
  %96 = tail call float @llvm.maxnum.f32(float %93, float %94) #10
  %97 = tail call float @llvm.maxnum.f32(float %96, float %95) #10
  %98 = fadd float %92, %97
  %99 = tail call float @llvm.maxnum.f32(float %77, float %98) #10
  %100 = fmul float %26, 0x3FEFAE1480000000
  %101 = fadd float %27, 0x3FD5B22D00000000
  %102 = fadd float %100, 0xBFE5CAC080000000
  %103 = fadd float %102, 5.000000e-01
  %104 = tail call float @fmodf(float %103, float 1.000000e+00) #10
  %105 = fadd float %104, -5.000000e-01
  %106 = fadd float %101, 0xBFE21CAC00000000
  %107 = fmul float %24, %24
  %108 = fmul float %105, %105
  %109 = fadd float %107, %108
  %110 = tail call float @sqrtf(float %109) #10
  %111 = fadd float %110, 0xBFB47AE140000000
  %112 = tail call float @llvm.fabs.f32(float %106) #10
  %113 = fadd float %112, 0xBFD3645A20000000
  %114 = tail call float @llvm.maxnum.f32(float %111, float %113) #10
  %115 = fadd float %101, 0xBFEB9DB220000000
  %116 = tail call float @llvm.fabs.f32(float %24) #10
  %117 = tail call float @llvm.fabs.f32(float %115) #10
  %118 = tail call float @llvm.fabs.f32(float %105) #10
  %119 = fadd float %116, 0xBFBA5E3540000000
  %120 = fadd float %117, 0xBFA374BC60000000
  %121 = fadd float %118, 0xBFBA5E3540000000
  %122 = tail call float @llvm.maxnum.f32(float %119, float 0.000000e+00) #10
  %123 = tail call float @llvm.maxnum.f32(float %120, float 0.000000e+00) #10
  %124 = tail call float @llvm.maxnum.f32(float %121, float 0.000000e+00) #10
  %125 = fmul float %122, %122
  %126 = fmul float %123, %123
  %127 = fmul float %124, %124
  %128 = fadd float %126, %127
  %129 = fadd float %125, %128
  %130 = tail call float @sqrtf(float %129) #10
  %131 = tail call float @llvm.minnum.f32(float %119, float 0.000000e+00) #10
  %132 = tail call float @llvm.minnum.f32(float %120, float 0.000000e+00) #10
  %133 = tail call float @llvm.minnum.f32(float %121, float 0.000000e+00) #10
  %134 = tail call float @llvm.maxnum.f32(float %131, float %132) #10
  %135 = tail call float @llvm.maxnum.f32(float %134, float %133) #10
  %136 = fadd float %130, %135
  %137 = tail call float @llvm.minnum.f32(float %114, float %136) #10
  %138 = fadd float %24, 0x3FF1B645A0000000
  %139 = tail call float @llvm.fabs.f32(float %138) #10
  %140 = fadd float %139, 0xBFBA5E3540000000
  %141 = tail call float @llvm.maxnum.f32(float %140, float 0.000000e+00) #10
  %142 = fmul float %141, %141
  %143 = fadd float %142, %128
  %144 = tail call float @sqrtf(float %143) #10
  %145 = tail call float @llvm.minnum.f32(float %140, float 0.000000e+00) #10
  %146 = tail call float @llvm.maxnum.f32(float %145, float %132) #10
  %147 = tail call float @llvm.maxnum.f32(float %146, float %133) #10
  %148 = fadd float %144, %147
  %149 = tail call float @llvm.minnum.f32(float %137, float %148) #10
  %150 = fadd float %101, 0xBFFEC08320000000
  %151 = tail call float @sqrtf(float %109) #10
  %152 = fadd float %151, 0xBFB47AE140000000
  %153 = tail call float @llvm.fabs.f32(float %150) #10
  %154 = fadd float %153, 0xBFC0624DE0000000
  %155 = tail call float @llvm.maxnum.f32(float %152, float %154) #10
  %156 = tail call float @llvm.minnum.f32(float %149, float %155) #10
  %157 = tail call float @llvm.minnum.f32(float %99, float %156) #10
  %158 = fmul float %27, 0x3FF174BC60000000
  %159 = fmul float %26, 0.000000e+00
  %160 = fadd float %159, 0xBFE4F5C280000000
  %161 = fadd float %160, %158
  %162 = fadd float %54, %161
  %163 = fmul float %24, 0x3FF174BC60000000
  %164 = fmul float %27, 0.000000e+00
  %165 = fadd float %159, 0.000000e+00
  %166 = fadd float %165, %164
  %167 = fsub float %166, %163
  %168 = fmul float %26, 0x3FF174BC60000000
  %169 = fadd float %168, 0xC01FA1CAC0000000
  %170 = fadd float %169, %164
  %171 = fadd float %54, %170
  %172 = fadd float %162, 0x3FB0624DE0000000
  %173 = fadd float %167, 0xC022F0A3E0000000
  %174 = fadd float %171, 0x40392978E0000000
  %175 = fmul float %173, 0.000000e+00
  %176 = fmul float %174, 0.000000e+00
  %177 = fadd float %175, %176
  %178 = fadd float %172, %177
  %179 = fadd float %171, 0x3FE1A1CAC0000000
  %180 = tail call float @fmodf(float %179, float 0x3FF1A1CAC0000000) #10
  %181 = fadd float %180, 0xBFE1A1CAC0000000
  %182 = fmul float %162, %162
  %183 = fmul float %181, %181
  %184 = fadd float %182, %183
  %185 = tail call float @sqrtf(float %184) #10
  %186 = fadd float %185, 0xBFE2B020C0000000
  %187 = tail call float @llvm.fabs.f32(float %167) #10
  %188 = fadd float %187, 0xC022558100000000
  %189 = tail call float @llvm.maxnum.f32(float %186, float %188) #10
  %190 = fadd float %167, 0x3FB3B645A0000000
  %191 = fneg float %189
  %192 = tail call float @sqrtf(float %184) #10
  %193 = fadd float %192, -6.250000e-01
  %194 = tail call float @llvm.fabs.f32(float %190) #10
  %195 = fadd float %194, 0xBFA9168720000000
  %196 = tail call float @llvm.maxnum.f32(float %193, float %195) #10
  %197 = tail call float @llvm.maxnum.f32(float %191, float %196) #10
  %198 = fneg float %178
  %199 = tail call float @llvm.maxnum.f32(float %198, float %197) #10
  %200 = tail call float @llvm.minnum.f32(float %157, float %199) #10
  %201 = fadd float %24, 0x3FFB439580000000
  %202 = fadd float %27, 0xBFF75C2900000000
  %203 = tail call float @llvm.fabs.f32(float %201) #10
  %204 = tail call float @llvm.fabs.f32(float %202) #10
  %205 = tail call float @llvm.fabs.f32(float %26) #10
  %206 = fadd float %203, 0xBFFEE147A0000000
  %207 = fadd float %204, 0xBFA2F1AA00000000
  %208 = fadd float %205, 0xC03BCD0E60000000
  %209 = tail call float @llvm.maxnum.f32(float %206, float 0.000000e+00) #10
  %210 = tail call float @llvm.maxnum.f32(float %207, float 0.000000e+00) #10
  %211 = tail call float @llvm.maxnum.f32(float %208, float 0.000000e+00) #10
  %212 = fmul float %209, %209
  %213 = fmul float %210, %210
  %214 = fmul float %211, %211
  %215 = fadd float %214, %213
  %216 = fadd float %212, %215
  %217 = tail call float @sqrtf(float %216) #10
  %218 = tail call float @llvm.minnum.f32(float %206, float 0.000000e+00) #10
  %219 = tail call float @llvm.minnum.f32(float %207, float 0.000000e+00) #10
  %220 = tail call float @llvm.minnum.f32(float %208, float 0.000000e+00) #10
  %221 = tail call float @llvm.maxnum.f32(float %218, float %219) #10
  %222 = tail call float @llvm.maxnum.f32(float %221, float %220) #10
  %223 = fadd float %222, %217
  %224 = tail call float @llvm.minnum.f32(float %200, float %223) #10
  %225 = fadd float %26, 0x3FD4ED9160000000
  %226 = fadd float %225, 0x3FE028F5C0000000
  %227 = tail call float @fmodf(float %226, float 0x3FF028F5C0000000) #10
  %228 = fadd float %227, 0xBFE028F5C0000000
  %229 = fmul float %24, 0x3FD7EF9DC0000000
  %230 = fmul float %27, 0x3FEDA9FBE0000000
  %231 = fmul float %228, 0.000000e+00
  %232 = fadd float %231, 0x3FF23126E0000000
  %233 = fsub float %232, %230
  %234 = fadd float %229, %233
  %235 = fmul float %24, 0x3FEDA9FBE0000000
  %236 = fmul float %27, 0x3FD7EF9DC0000000
  %237 = fadd float %231, 0xBFE849BA60000000
  %238 = fadd float %236, %237
  %239 = fadd float %235, %238
  %240 = fadd float %228, 0.000000e+00
  %241 = fadd float %164, %240
  %242 = fadd float %54, %241
  %243 = fmul float %234, %234
  %244 = fmul float %242, %242
  %245 = fadd float %244, %243
  %246 = tail call float @sqrtf(float %245) #10
  %247 = fadd float %246, 0xBF847AE140000000
  %248 = tail call float @llvm.fabs.f32(float %239) #10
  %249 = fadd float %248, 0xBFCD2F1AA0000000
  %250 = tail call float @llvm.maxnum.f32(float %247, float %249) #10
  %251 = fmul float %24, 0x4026DE3540000000
  %252 = fmul float %27, 0x4026DE3540000000
  %253 = fmul float %228, 0x4026DE3540000000
  %254 = fadd float %251, 0xBFABA5E360000000
  %255 = fadd float %252, 0xBFF3F7CEE0000000
  %256 = fadd float %255, -1.300000e+01
  %257 = fmul float %254, %254
  %258 = fmul float %256, %256
  %259 = fmul float %253, %253
  %260 = fadd float %258, %259
  %261 = fadd float %257, %260
  %262 = tail call float @sqrtf(float %261) #10
  %263 = fadd float %262, 0xBFE6666660000000
  %264 = tail call float @llvm.minnum.f32(float %250, float %263) #10
  %265 = tail call float @llvm.minnum.f32(float %224, float %264) #10
  %266 = fadd float %6, 0x3FF6B851E0000000
  %267 = tail call float @llvm.minnum.f32(float %265, float %266) #10
  %268 = fadd float %20, 0x40019999A0000000
  %269 = tail call float @llvm.minnum.f32(float %267, float %268) #10
  %270 = fadd float %6, -4.500000e+00
  %271 = tail call float @llvm.maxnum.f32(float %269, float %270) #10
  %272 = fmul float %5, 0x3FD3333340000000
  %273 = tail call float @cosf(float %272) #10
  %274 = fmul float %273, 4.000000e+00
  %275 = tail call float @cosf(float %272) #10
  %276 = fmul float %275, 2.500000e+00
  %277 = tail call float @cosf(float %272) #10
  %278 = fmul float %277, 4.000000e+00
  %279 = fadd float %274, %0
  %280 = fadd float %6, %276
  %281 = fsub float %2, %278
  %282 = fadd float %279, 0xBFD99999A0000000
  %283 = fadd float %281, 0xBFD99999A0000000
  %284 = fmul float %282, %282
  %285 = fmul float %280, %280
  %286 = fmul float %283, %283
  %287 = fadd float %285, %286
  %288 = fadd float %284, %287
  %289 = tail call float @sqrtf(float %288) #10
  %290 = fadd float %289, 0xBFECCCCCC0000000
  %291 = fsub float %271, %290
  %292 = tail call float @llvm.fabs.f32(float %291) #10
  %293 = fsub float 0x3FF4CCCCC0000000, %292
  %294 = tail call float @llvm.maxnum.f32(float %293, float 0.000000e+00) #10
  %295 = tail call float @llvm.minnum.f32(float %271, float %290) #10
  %296 = fmul float %294, %294
  %297 = fmul float %296, 2.500000e-01
  %298 = fdiv float %297, 0x3FF4CCCCC0000000
  %299 = fsub float %295, %298
  %300 = fadd float %20, %22
  %301 = fadd float %300, -1.200000e+01
  %302 = tail call float @llvm.maxnum.f32(float %299, float %301) #10
  %303 = fadd float %0, 0xC013D70A40000000
  %304 = tail call float @llvm.maxnum.f32(float %302, float %303) #10
  %305 = fadd float %2, 0xC013D70A40000000
  %306 = tail call float @llvm.maxnum.f32(float %304, float %305) #10
  ret float %306
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nofree nounwind
declare dso_local float @fmodf(float, float) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nofree nounwind
declare dso_local float @cosf(float) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local float @sinf(float) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local float @sqrtf(float) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local float @atan2f(float, float) local_unnamed_addr #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_sponza5.cpp() #9 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }

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
!29 = distinct !{!29, !30, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEE5decayEv: argument 0"}
!30 = distinct !{!30, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEE5decayEv"}
!31 = distinct !{!31, !32, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEEcvS3_Ev: argument 0"}
!32 = distinct !{!32, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEEcvS3_Ev"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN7swizzle7vector_IfJLm0EEE9call_atanERKS1_S3_: argument 0"}
!35 = distinct !{!35, !"_ZN7swizzle7vector_IfJLm0EEE9call_atanERKS1_S3_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN7swizzlemlERKNS_7vector_IfJLm0ELm1EEEERKf: argument 0"}
!38 = distinct !{!38, !"_ZN7swizzlemlERKNS_7vector_IfJLm0ELm1EEEERKf"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEE5decayEv: argument 0"}
!41 = distinct !{!41, !"_ZNK7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEE5decayEv"}
!42 = distinct !{!42, !43, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEEcvS3_Ev: argument 0"}
!43 = distinct !{!43, !"_ZN7swizzle6detail15indexed_swizzleINS_7vector_IfJLm0ELm1EEEESt5arrayIfLm3EEfJLm0ELm2EEEcvS3_Ev"}

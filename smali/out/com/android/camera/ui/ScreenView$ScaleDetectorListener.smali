.class Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenView;->-get2(Lcom/android/camera/ui/ScreenView;)I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_20

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_34

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_27
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3c

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    return v5

    :cond_34
    const v1, 0x3f86bca2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_27

    goto :goto_20

    :cond_3c
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_49

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    return v5

    :cond_49
    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenView;->-get2(Lcom/android/camera/ui/ScreenView;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->finishCurrentGesture()V

    return-void
.end method

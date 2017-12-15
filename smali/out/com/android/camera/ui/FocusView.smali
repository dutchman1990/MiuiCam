.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$1;,
        Lcom/android/camera/ui/FocusView$2;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;
    }
.end annotation


# static fields
.field public static final BIG_INIT_RADIUS:I

.field private static final BIG_LINE_WIDTH:I

.field private static final BIG_MAX_RADIUS:I

.field public static final BIG_RADIUS:I

.field private static final GAP_NUM:F

.field private static final MARGIN:I

.field private static final MAX_SLIDE_DISTANCE:I

.field private static final SMALL_LINE_WIDTH:I

.field private static final SMALL_MAX_RADIUS:I

.field private static final SMALL_MIN_RADIUS:I

.field private static final SMALL_RADIUS:I

.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I

.field private static final TRIANGLE_MAX_DIS:I

.field private static final TRIANGLE_MIN_MARGIN:I


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBigAlpha:I

.field private mBigPaint:Landroid/graphics/Paint;

.field private mBigRadius:I

.field private mBottomRelative:I

.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mCaptureBitmapBounds:Landroid/graphics/Rect;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field mEVCaptureRatio:F

.field private mEvAdjusted:Z

.field private mEvTriangleDis:I

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mFailTime:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMinusMoonPaint:Landroid/graphics/Paint;

.field private mRelativeLocation:[I

.field private mRotation:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mSlideDistance:I

.field private mSlideStartTime:J

.field private mSmallAlpha:I

.field private mSmallLineWidth:I

.field private mSmallPaint:Landroid/graphics/Paint;

.field private mSmallRadius:I

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    return v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/FocusView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/ui/FocusView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    return-wide v0
.end method

.method static synthetic -get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/camera/ui/FocusView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/ui/FocusView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/ui/FocusView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/camera/ui/FocusView;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    return-object v0
.end method

.method static synthetic -get2()I
    .registers 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/camera/ui/FocusView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    return-wide v0
.end method

.method static synthetic -get23(Lcom/android/camera/ui/FocusView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get24(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/camera/ui/FocusView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    return-wide v0
.end method

.method static synthetic -get3()I
    .registers 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    return v0
.end method

.method static synthetic -get4()I
    .registers 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/FocusView;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/camera/ui/FocusView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/FocusView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/ui/FocusView;F)F
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/camera/ui/FocusView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/FocusView;FFF)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/FocusView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/ui/FocusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/ui/FocusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/FocusView;F)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/FocusView;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/FocusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/ui/FocusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/ui/FocusView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/ui/FocusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/ui/FocusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/ui/FocusView;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    const v0, 0x422d5c29    # 43.34f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MAX_DIS:I

    const-string/jumbo v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MARGIN:I

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calculateAttribute()V
    .registers 11

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v3, :pswitch_data_16a

    :goto_1c
    :pswitch_1c
    return-void

    :pswitch_1d
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_54

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v5, v3

    sub-float v3, v6, v1

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v5

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_1c

    :cond_54
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v7

    mul-float v2, v5, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float v3, v0, v2

    sub-float v4, v6, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float v3, v0, v2

    sub-float v4, v6, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    sub-float v3, v6, v2

    mul-float/2addr v3, v9

    add-float/2addr v3, v8

    mul-float v4, v5, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_1c

    :pswitch_8f
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_cf

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v5, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    sub-float v3, v6, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-float v3, v6, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v9

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v3, v9, v2

    add-float/2addr v3, v8

    mul-float v4, v5, v1

    sub-float v5, v6, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1c

    :cond_cf
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v7

    mul-float v2, v5, v3

    sub-float v3, v6, v0

    mul-float/2addr v3, v2

    mul-float/2addr v3, v5

    const/high16 v4, 0x41000000    # 8.0f

    sub-float v3, v4, v3

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    sub-float v4, v6, v2

    const v5, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    sub-float v4, v6, v2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1c

    :pswitch_105
    move v2, v0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v4

    if-ge v3, v4, :cond_130

    mul-float v3, v5, v0

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1c

    :cond_130
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float v3, v5, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float v3, v9, v0

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v3, v5, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1c

    :pswitch_15a
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-eqz v3, :cond_167

    const/4 v3, 0x1

    :goto_163
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1c

    :cond_167
    const/4 v3, 0x0

    goto :goto_163

    nop

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_15a
        :pswitch_105
        :pswitch_1c
        :pswitch_8f
        :pswitch_1d
    .end packed-switch
.end method

.method private clearMessages()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private drawCaptureBitmap(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_36
    return-void
.end method

.method private drawCenterIndicator(Landroid/graphics/Canvas;)V
    .registers 6

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_41

    :cond_17
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_32
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_41
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    packed-switch v0, :pswitch_data_68

    goto :goto_32

    :pswitch_47
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCaptureBitmap(Landroid/graphics/Canvas;)V

    goto :goto_32

    :pswitch_4b
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawSun(Landroid/graphics/Canvas;)V

    goto :goto_32

    :pswitch_4f
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_32

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
    .end packed-switch
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v4, :cond_a

    :cond_9
    return-void

    :cond_a
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v4

    if-ne v3, v4, :cond_a1

    :goto_15
    if-nez v3, :cond_a4

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    if-ge v4, v5, :cond_a4

    :cond_26
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    :goto_34
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_9b
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_a1
    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_a4
    if-eqz v3, :cond_b2

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    if-ge v4, v5, :cond_26

    :cond_b2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    goto/16 :goto_34

    :cond_c2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9b
.end method

.method private drawSun(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v6, 0x0

    :goto_a
    const/4 v0, 0x2

    if-ge v6, v0, :cond_83

    if-lez v6, :cond_14

    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_14
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_83
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCurrentAngle()I
    .registers 10

    const/4 v8, 0x3

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v5, 0x168

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_3b

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3b

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_34

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    div-int v0, v2, v3

    :cond_34
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    :cond_3a
    :goto_3a
    return v0

    :cond_3b
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_67

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_60

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    :cond_60
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    goto :goto_3a

    :cond_67
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_77

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_3a

    :cond_77
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v7

    float-to-int v0, v2

    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_3a
.end method

.method private getInterpolation(F)F
    .registers 8

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_f
    return v0
.end method

.method private getItemByCoordinate()I
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getItemRatio(I)F
    .registers 7

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_17

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    :goto_16
    return v0

    :cond_17
    mul-float/2addr v0, v4

    goto :goto_16
.end method

.method private initAdapter(II)V
    .registers 9

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance v3, Lcom/android/camera/ui/FloatSlideAdapter;

    sget v2, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1b

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_11
    invoke-direct {v3, p1, p2, v2}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v2, :cond_22

    return-void

    :cond_1b
    sub-int v2, p2, p1

    int-to-float v2, v2

    sget v4, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v2, v4

    goto :goto_11

    :cond_22
    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_43

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    :goto_42
    return-void

    :cond_43
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_42
.end method

.method private isInCircle(FFF)Z
    .registers 10

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_1b

    const/4 v4, 0x1

    :goto_1a
    return v4

    :cond_1b
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method private isStableStart()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private performSlideBack()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_23
.end method

.method private processParameterIfNeeded(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_13
    return-void
.end method

.method private reload()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    :cond_1b
    return-void
.end method

.method private removeMessages()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void
.end method

.method private setCurrentItem(IZ)V
    .registers 9

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v0, :cond_28

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_28

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f090088

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_28
    return-void
.end method

.method private setDraw(Z)V
    .registers 3

    if-eqz p1, :cond_d

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_d

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    :cond_d
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return-void
.end method

.method private setTouchDown()V
    .registers 3

    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    return-void
.end method

.method private startAnimation()V
    .registers 4

    const/4 v2, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopEvAdjust()V
    .registers 7

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v1, 0x1

    const v2, 0x7f090088

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    :cond_7
    return-void
.end method

.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->initAdapter(II)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->clear()V

    return-void
.end method

.method public isEvAdjusted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isEvAdjustedTime()Z
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v7

    :goto_1f
    return v0

    :cond_20
    move v0, v6

    goto :goto_1f

    :cond_22
    move v0, v6

    goto :goto_1f

    :cond_24
    move v0, v7

    goto :goto_1f
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/16 v2, 0xff

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_29
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCenterIndicator(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCursor(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4f
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_19

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    sub-int v0, p5, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    :cond_19
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    return-void
.end method

.method public onResume()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v2, :cond_5e

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v2, :cond_5e

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_15
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2c

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_2c

    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v1, v2, :cond_39

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_59

    :cond_39
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v2, :cond_4a

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_exposure_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    :cond_4a
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v2, :cond_50

    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :cond_50
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v2, :cond_59

    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    :cond_59
    if-nez v0, :cond_5d

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_5d
    return v1

    :cond_5e
    return v4
.end method

.method public setFocusType(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_d
    return-void
.end method

.method public setPosition(II)V
    .registers 3

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method public showFail()V
    .registers 6

    const/4 v4, 0x3

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-eqz v0, :cond_16

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_2e
    return-void
.end method

.method public showStart()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_2f

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2b
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    return-void

    :cond_2f
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2b
.end method

.method public showSuccess()V
    .registers 6

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_32

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-eqz v0, :cond_16

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2f
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    :cond_32
    return-void
.end method

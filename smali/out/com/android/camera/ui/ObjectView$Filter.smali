.class Lcom/android/camera/ui/ObjectView$Filter;
.super Ljava/lang/Object;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ObjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Filter"
.end annotation


# instance fields
.field mCurrentValue:I

.field mHoldTimes:I

.field mHoldValue:I

.field final synthetic this$0:Lcom/android/camera/ui/ObjectView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ObjectView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->this$0:Lcom/android/camera/ui/ObjectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$Filter;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView$Filter;-><init>(Lcom/android/camera/ui/ObjectView;)V

    return-void
.end method

.method private filter(I)I
    .registers 4

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    if-eq p1, v0, :cond_d

    iput p1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    :cond_a
    :goto_a
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    return v0

    :cond_d
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    if-ge v0, v1, :cond_17

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    :cond_17
    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldTimes:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    iget v1, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    goto :goto_a
.end method


# virtual methods
.method public isBecomeStable(I)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView$Filter;->filter(I)I

    move-result v1

    if-nez v0, :cond_d

    if-ne v1, v2, :cond_d

    :goto_c
    return v2

    :cond_d
    move v2, v3

    goto :goto_c
.end method

.method public resetState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView$Filter;->mHoldValue:I

    return-void
.end method

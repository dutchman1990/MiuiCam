.class public Lcom/android/camera/ui/EffectPopup$EffectItemPadding;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemPadding"
.end annotation


# instance fields
.field protected mPadding:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_9

    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    :cond_9
    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    iget v3, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    iget v4, p0, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;->mPadding:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

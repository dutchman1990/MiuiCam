.class Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;
.super Landroid/os/Handler;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c4

    :goto_6
    return-void

    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_6

    :pswitch_13
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    :cond_2a
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->ignoreTouchEvent(Z)V

    goto :goto_6

    :pswitch_30
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->onCameraException()V

    goto :goto_6

    :pswitch_36
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get11(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get11(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap4(Lcom/android/camera/module/MorphoPanoramaModule;)V

    goto :goto_6

    :pswitch_70
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-set5(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    const-wide/16 v2, 0x64

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get11(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mUIStyle:I

    if-eq v0, v1, :cond_a4

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput v0, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mUIStyle:I

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->changePreviewSurfaceSize()V

    :cond_a4
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap5(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap11(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    goto/16 :goto_6

    :pswitch_b6
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get8(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap9(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    goto/16 :goto_6

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_30
        :pswitch_36
        :pswitch_70
        :pswitch_b6
    .end packed-switch
.end method

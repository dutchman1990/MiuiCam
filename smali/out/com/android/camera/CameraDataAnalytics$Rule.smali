.class Lcom/android/camera/CameraDataAnalytics$Rule;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraDataAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rule"
.end annotation


# instance fields
.field public eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraDataAnalytics$Event;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/CameraDataAnalytics;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraDataAnalytics;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/CameraDataAnalytics$Rule;->this$0:Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    return-void
.end method

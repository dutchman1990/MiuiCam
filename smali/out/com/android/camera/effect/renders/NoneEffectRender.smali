.class public Lcom/android/camera/effect/renders/NoneEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "NoneEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    gl_FragColor = vec4(texture2D(sTexture, vTexCoord).rgb, 1); \n}"

    return-object v0
.end method

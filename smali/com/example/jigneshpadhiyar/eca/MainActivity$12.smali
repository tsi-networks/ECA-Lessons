.class Lcom/example/jigneshpadhiyar/eca/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jigneshpadhiyar/eca/MainActivity;->playvideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/jigneshpadhiyar/eca/MainActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$12;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$12;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->mVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 380
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$12;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->flag_img_sos:Ljava/lang/Boolean;

    .line 381
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$12;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_sos:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 382
    return-void
.end method

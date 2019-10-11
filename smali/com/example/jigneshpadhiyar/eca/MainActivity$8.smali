.class Lcom/example/jigneshpadhiyar/eca/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jigneshpadhiyar/eca/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 212
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 216
    if-nez p2, :cond_1

    .line 217
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire1:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire3:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$8;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire0:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

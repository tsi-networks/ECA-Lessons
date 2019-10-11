.class Lcom/example/jigneshpadhiyar/eca/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 170
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu3:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_118:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->flag_img_sos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->flag_img_sos:Ljava/lang/Boolean;

    .line 177
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_sos:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_group:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson01:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson02:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson03:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson04:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulesson05:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessona:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessonb:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessonc:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessond:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menulessone:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire0:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$6;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_fire3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 195
    :cond_1
    return-void
.end method

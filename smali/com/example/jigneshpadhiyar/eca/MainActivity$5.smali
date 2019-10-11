.class Lcom/example/jigneshpadhiyar/eca/MainActivity$5;
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
    .line 156
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_homescreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_lecon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$5;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v0, v0, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu5:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 167
    return-void
.end method

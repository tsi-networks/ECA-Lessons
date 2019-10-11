.class Lcom/example/jigneshpadhiyar/eca/MainActivity$1;
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
    .line 85
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_homescreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->layout_lecon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu1:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 92
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu2:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 93
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu3:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 94
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu4:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 95
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->tb_menu5:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 96
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    iget-object v1, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->gridAdapter:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    invoke-virtual {v1}, Lcom/example/jigneshpadhiyar/eca/CustomAdapter;->notifyDataSetChanged()V

    .line 98
    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    const-string v2, "/Download/BitTorrent Sync/ECA-Lessons/videos/Films ECA/"

    iput-object v2, v1, Lcom/example/jigneshpadhiyar/eca/MainActivity;->filePath:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;

    iget-object v1, p0, Lcom/example/jigneshpadhiyar/eca/MainActivity$1;->this$0:Lcom/example/jigneshpadhiyar/eca/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;-><init>(Lcom/example/jigneshpadhiyar/eca/MainActivity;Lcom/example/jigneshpadhiyar/eca/MainActivity$1;)V

    .line 100
    .local v0, "task":Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/example/jigneshpadhiyar/eca/MainActivity$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method

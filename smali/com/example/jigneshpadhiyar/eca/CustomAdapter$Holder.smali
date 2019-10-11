.class public Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;
.super Ljava/lang/Object;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/jigneshpadhiyar/eca/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/example/jigneshpadhiyar/eca/CustomAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/example/jigneshpadhiyar/eca/CustomAdapter$Holder;->this$0:Lcom/example/jigneshpadhiyar/eca/CustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

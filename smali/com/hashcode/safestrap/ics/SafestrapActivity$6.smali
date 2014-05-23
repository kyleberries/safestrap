.class Lcom/hashcode/safestrap/ics/SafestrapActivity$6;
.super Ljava/lang/Object;
.source "SafestrapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hashcode/safestrap/ics/SafestrapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;


# direct methods
.method constructor <init>(Lcom/hashcode/safestrap/ics/SafestrapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$6;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 254
    :try_start_0
    const-string v1, "reboot recovery"

    invoke-static {v1}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$6;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->messageText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$5(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class Lcom/hashcode/safestrap/ics/SafestrapActivity$5;
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
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$5;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 243
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$5;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    invoke-virtual {v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/recovery-reboot.sh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$5;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    invoke-virtual {v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "su"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "reboot now"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$5;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->messageText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$5(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class Lcom/hashcode/safestrap/ics/SafestrapActivity$4;
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
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$4;)Lcom/hashcode/safestrap/ics/SafestrapActivity;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity;Landroid/app/ProgressDialog;)V

    .line 210
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 211
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "Loading..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 213
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 214
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getCurrentFocus()Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    new-instance v2, Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    invoke-direct {v2}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;-><init>()V

    #setter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    invoke-static {v1, v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$6(Lcom/hashcode/safestrap/ics/SafestrapActivity;Lcom/hashcode/safestrap/ics/UninstallDialogThread;)V

    .line 216
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$7(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    move-result-object v1

    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    invoke-virtual {v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->packageCodePath:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$7(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    move-result-object v1

    iget-object v2, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    invoke-virtual {v2}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->mAppRoot:Ljava/io/File;

    .line 218
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$7(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    move-result-object v1

    const-string v2, "Safestrap"

    iput-object v2, v1, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->LOGTAG:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$7(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    move-result-object v1

    new-instance v2, Lcom/hashcode/safestrap/ics/SafestrapActivity$4$1;

    invoke-direct {v2, p0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$4$1;-><init>(Lcom/hashcode/safestrap/ics/SafestrapActivity$4;)V

    iput-object v2, v1, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->handler:Landroid/os/Handler;

    .line 233
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->uninstallDialogThread:Lcom/hashcode/safestrap/ics/UninstallDialogThread;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$7(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Lcom/hashcode/safestrap/ics/UninstallDialogThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$4;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->messageText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$5(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

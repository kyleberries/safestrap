.class Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;
.super Landroid/os/Handler;
.source "SafestrapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;


# direct methods
.method constructor <init>(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    .line 185
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)Lcom/hashcode/safestrap/ics/SafestrapActivity;

    move-result-object v0

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 190
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)Lcom/hashcode/safestrap/ics/SafestrapActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity;Landroid/app/ProgressDialog;)V

    .line 191
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)Lcom/hashcode/safestrap/ics/SafestrapActivity;

    move-result-object v0

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->buttonInstall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$4(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)Lcom/hashcode/safestrap/ics/SafestrapActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->setupControls()V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)Lcom/hashcode/safestrap/ics/SafestrapActivity;

    move-result-object v0

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 195
    iget-object v0, p0, Lcom/hashcode/safestrap/ics/SafestrapActivity$3$1;->this$1:Lcom/hashcode/safestrap/ics/SafestrapActivity$3;

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->this$0:Lcom/hashcode/safestrap/ics/SafestrapActivity;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity$3;->access$0(Lcom/hashcode/safestrap/ics/SafestrapActivity$3;)Lcom/hashcode/safestrap/ics/SafestrapActivity;

    move-result-object v0

    #getter for: Lcom/hashcode/safestrap/ics/SafestrapActivity;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/hashcode/safestrap/ics/SafestrapActivity;->access$1(Lcom/hashcode/safestrap/ics/SafestrapActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

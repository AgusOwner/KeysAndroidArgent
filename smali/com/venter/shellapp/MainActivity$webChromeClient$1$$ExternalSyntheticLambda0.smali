.class public final synthetic Lcom/venter/shellapp/MainActivity$webChromeClient$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/webkit/JsPromptResult;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/venter/shellapp/MainActivity$webChromeClient$1$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/JsPromptResult;

    iput-object p2, p0, Lcom/venter/shellapp/MainActivity$webChromeClient$1$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/venter/shellapp/MainActivity$webChromeClient$1$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/venter/shellapp/MainActivity$webChromeClient$1$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lcom/venter/shellapp/MainActivity$webChromeClient$1;->$r8$lambda$rw1uF6VktOdQdPqMgEj4iK837Oo(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.class public final Lcom/venter/shellapp/ErrorActivity;
.super Landroid/app/Activity;
.source "ErrorActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/venter/shellapp/ErrorActivity;",
        "Landroid/app/Activity;",
        "()V",
        "dp2px",
        "",
        "dpValue",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final dp2px(F)I
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/venter/shellapp/ErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lcom/venter/shellapp/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ErrorMsg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Landroid/widget/ScrollView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 16
    invoke-direct {p0, p1}, Lcom/venter/shellapp/ErrorActivity;->dp2px(F)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/venter/shellapp/ErrorActivity;->dp2px(F)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/venter/shellapp/ErrorActivity;->dp2px(F)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/venter/shellapp/ErrorActivity;->dp2px(F)I

    move-result p1

    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p1, 0x11

    .line 17
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 19
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 20
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/venter/shellapp/ErrorActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

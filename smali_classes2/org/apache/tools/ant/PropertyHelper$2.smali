.class Lorg/apache/tools/ant/PropertyHelper$2;
.super Ljava/lang/Object;
.source "PropertyHelper.java"

# interfaces
.implements Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/PropertyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final PREFIX:Ljava/lang/String;

.field private final PREFIX_LEN:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ant.refid:"

    .line 238
    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper$2;->PREFIX:Ljava/lang/String;

    const/16 v0, 0xa

    .line 239
    iput v0, p0, Lorg/apache/tools/ant/PropertyHelper$2;->PREFIX_LEN:I

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .locals 1

    const-string v0, "ant.refid:"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p2}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    iget v0, p0, Lorg/apache/tools/ant/PropertyHelper$2;->PREFIX_LEN:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

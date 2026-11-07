.class public Lorg/apache/tools/ant/filters/StripLineComments$Comment;
.super Ljava/lang/Object;
.source "StripLineComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/StripLineComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comment"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/StripLineComments$Comment;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments$Comment;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineComments$Comment;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    iput-object p1, p0, Lorg/apache/tools/ant/filters/StripLineComments$Comment;->value:Ljava/lang/String;

    return-void

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Comment value already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class final enum Lorg/apache/tools/ant/types/Quantifier$Predicate$4;
.super Lorg/apache/tools/ant/types/Quantifier$Predicate;
.source "Quantifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Quantifier$Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 87
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/types/Quantifier$Predicate;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Lorg/apache/tools/ant/types/Quantifier$1;)V

    return-void
.end method


# virtual methods
.method eval(II)Z
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

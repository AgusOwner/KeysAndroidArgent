.class public Lorg/apache/tools/ant/types/FlexInteger;
.super Ljava/lang/Object;
.source "FlexInteger.java"


# instance fields
.field private value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/FlexInteger;->value:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/types/FlexInteger;->value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/types/FlexInteger;->value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

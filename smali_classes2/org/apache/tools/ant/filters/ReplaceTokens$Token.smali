.class public Lorg/apache/tools/ant/filters/ReplaceTokens$Token;
.super Ljava/lang/Object;
.source "ReplaceTokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/ReplaceTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->key:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ReplaceTokens$Token;->value:Ljava/lang/String;

    return-void
.end method

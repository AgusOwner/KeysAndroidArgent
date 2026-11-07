.class public Lorg/apache/tools/ant/filters/LineContains$Contains;
.super Ljava/lang/Object;
.source "LineContains.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/LineContains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contains"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains$Contains;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/apache/tools/ant/filters/LineContains$Contains;->value:Ljava/lang/String;

    return-void
.end method

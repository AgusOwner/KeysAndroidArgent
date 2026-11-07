.class public Lorg/apache/tools/ant/taskdefs/SQLExec$DelimiterType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "SQLExec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/SQLExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelimiterType"
.end annotation


# static fields
.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final ROW:Ljava/lang/String; = "row"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 2

    const-string v0, "normal"

    const-string v1, "row"

    .line 94
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

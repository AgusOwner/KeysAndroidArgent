.class public Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "IsLastModified.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareMode"
.end annotation


# static fields
.field private static final AFTER_TEXT:Ljava/lang/String; = "after"

.field private static final BEFORE_TEXT:Ljava/lang/String; = "before"

.field private static final EQUALS:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

.field private static final EQUALS_TEXT:Ljava/lang/String; = "equals"

.field private static final NOT_AFTER_TEXT:Ljava/lang/String; = "not-after"

.field private static final NOT_BEFORE_TEXT:Ljava/lang/String; = "not-before"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 193
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    const-string v1, "equals"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->EQUALS:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "equals"

    .line 199
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;
    .locals 1

    .line 186
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->EQUALS:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-object v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 5

    const-string v0, "not-before"

    const-string v1, "not-after"

    const-string v2, "equals"

    const-string v3, "before"

    const-string v4, "after"

    .line 214
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

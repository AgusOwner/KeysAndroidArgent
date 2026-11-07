.class public Lorg/apache/tools/ant/types/FilterSet$OnMissing;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FilterSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/FilterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMissing"
.end annotation


# static fields
.field public static final FAIL:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private static final FAIL_INDEX:I = 0x0

.field public static final IGNORE:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private static final IGNORE_INDEX:I = 0x2

.field private static final VALUES:[Ljava/lang/String;

.field public static final WARN:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

.field private static final WARN_INDEX:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fail"

    const-string v1, "warn"

    const-string v2, "ignore"

    .line 130
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->VALUES:[Ljava/lang/String;

    .line 134
    new-instance v3, Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->FAIL:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 136
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->WARN:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    .line 138
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->IGNORE:Lorg/apache/tools/ant/types/FilterSet$OnMissing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 162
    sget-object v0, Lorg/apache/tools/ant/types/FilterSet$OnMissing;->VALUES:[Ljava/lang/String;

    return-object v0
.end method

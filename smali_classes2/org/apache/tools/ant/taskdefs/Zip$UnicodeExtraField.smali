.class public final Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Zip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeExtraField"
.end annotation


# static fields
.field private static final ALWAYS_KEY:Ljava/lang/String; = "always"

.field public static final NEVER:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

.field private static final NEVER_KEY:Ljava/lang/String; = "never"

.field private static final N_E_KEY:Ljava/lang/String; = "not-encodeable"

.field private static final POLICIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->POLICIES:Ljava/util/Map;

    .line 2147
    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    const-string v2, "never"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "always"

    .line 2149
    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "not-encodeable"

    .line 2151
    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NOT_ENCODEABLE:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2168
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2164
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 2165
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPolicy()Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;
    .locals 2

    .line 2172
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->POLICIES:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "always"

    const-string v1, "not-encodeable"

    const-string v2, "never"

    .line 2158
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
